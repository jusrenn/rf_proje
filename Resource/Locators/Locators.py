# HomePage Locators
createAccountLink = "(//a[text()='Create account'])[1]"
logoutBtn = "//a[text()='Log out']"
loginLink = "//*[text()='Log in']"
searchBtn = "//button[@aria-controls='SearchBar-header-top']"
searchBoxInput = "(//input[@id='SearchBarInput-header-top'])[1]"
homeofficeLocator = "(//div[@class='header-menu__summary-container'])[6]"
deskLocator="(//a[@href='/collections/desk'])[2]"
LivingRoomSetIlkUrun = "//ul[@id='splide02-list']/li[9]"

# RegisterPage Locators
isim="id=CreateCustomerForm-firstname"
soyisim="id=CreateCustomerForm-lastname"
email="id=CreateCustomerForm-email"
password="id=CreateCustomerForm-password"
createButonu="//*[@class='button button--cta button--solid']"

# LoginPage Locators
emailInput = "id=CustomerForm-email"
passwordInput = "id=CustomerForm-password"
signUpBtn = "(//button[@class='button button--cta button--solid'])[2]"
error = "//li[text()='Incorrect email or password.']"

# SearchPage Locators
searchResult = "//p[@role='status']"
fiyatDropbox = "//select[@id='SortBy-template--15826732220569__main']"
birinciUrun = "(//a[@class='product-card__link absolute inset-0 z-10'])[1]"
urunFiyatlariLocator = "//span[@class='price-item price-item--sale']"
urunlerLinkleriLocator = "//li[@class='collection__grid-item']"

# ProductPage Locators
urunBasligi = "//h1"
addToCartBtn = "name=add"
cartLink = "//a[@class='cart-notification__cart']"

# CategoryPage Locators
priceSekmesi = "(//span[@class='filter-group-summary__label'])[3]"
maxFiyatInput = "//input[@name='filter.v.price.lte']"
urunBasliklari = "//div[@class='product-card__title group-hover:text-primary-accent']"

# CartPage Locators
removeLink = "//a[@class='underline text-primary-text-80 font-navigation text-xs inline-block']"
emptyCart = "//p[@class='cart-items__empty-text']"