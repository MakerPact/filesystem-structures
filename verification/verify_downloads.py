from playwright.sync_api import sync_playwright, expect

def run(playwright):
    browser = playwright.chromium.launch(headless=True)
    page = browser.new_page()

    # Base URL for the local hugo server
    base_url = "http://localhost:1313"

    # 1. Verify Chronological Page
    print("Verifying Chronological page...")
    page.goto(f"{base_url}/chronological/")
    expect(page.get_by_role("link", name="Download Chronological System Scripts (.zip)")).to_be_visible()

    # Check the href attribute
    download_link = page.get_by_role("link", name="Download Chronological System Scripts (.zip)")
    href = download_link.get_attribute("href")
    assert href == "/downloads/chronological.zip", f"Expected href '/downloads/chronological.zip', but got '{href}'"

    page.screenshot(path="verification/chronological_page.png", full_page=True)
    print("Chronological page verified.")

    # 2. Verify Johnny Decimal Page
    print("Verifying Johnny Decimal page...")
    page.goto(f"{base_url}/johnny-decimal/")
    expect(page.get_by_role("link", name="Download Johnny Decimal System Scripts (.zip)")).to_be_visible()
    page.screenshot(path="verification/johnny_decimal_page.png", full_page=True)
    print("Johnny Decimal page verified.")

    # 3. Verify PARA Method Page
    print("Verifying PARA Method page...")
    page.goto(f"{base_url}/para-method/")
    expect(page.get_by_role("link", name="Download PARA Method Scripts (.zip)")).to_be_visible()
    page.screenshot(path="verification/para_method_page.png", full_page=True)
    print("PARA Method page verified.")

    browser.close()

with sync_playwright() as playwright:
    run(playwright)
