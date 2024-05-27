from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By
from appium.webdriver.common.touch_action import TouchAction


@keyword('Meu Drag And Drop')
def drag_and_drog(original, alvo):
    appium_lib = BuiltIn().get_library_instance('AppiumLibrary')

    driver = appium_lib._current_application()

    elemento_original = driver.find_element(By.XPATH, original)
    elemento_alvo = driver.find_element(By.XPATH, alvo)

    actions = TouchAction(driver)
    actions.long_press(elemento_original).move_to(elemento_alvo)
    actions.release()
    actions.perform()