from playwright.sync_api import sync_playwright, expect

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()
        try:
            # Go to the local server
            # Since the site is built with baseURL /filesystem-structures/,
            # and I'm serving 'public' at root, I need to check how links behave.
            # If I serve 'public' at localhost:8080, then 'public/index.html' is at localhost:8080/index.html
            # But the HTML expects /filesystem-structures/ prefix for assets.
            # So images like /filesystem-structures/css/... will fail if I just serve public at root
            # unless I create a folder structure or ignore 404s for css.
            # However, my image change used a relative path `images/filing-system-flowchart.jpeg`.
            # This should work if I load localhost:8080/index.html.

            page.goto("http://localhost:8080/")

            # Check title
            expect(page).to_have_title("The Ultimate Filing System")

            # Check Flowchart Image
            # I used {{< figure src="images/..." >}} which rendered <img src="images/...">
            # So it should be visible.
            img = page.locator("img[alt='Filing System Flowchart']")
            expect(img).to_be_visible()

            # Check Download Link
            download_link = page.get_by_text("Download Repository ZIP")
            expect(download_link).to_be_visible()

            # Take screenshot
            page.screenshot(path="homepage_verification.png", full_page=True)
            print("Verification successful, screenshot saved.")

        except Exception as e:
            print(f"Verification failed: {e}")
        finally:
            browser.close()

if __name__ == "__main__":
    run()
