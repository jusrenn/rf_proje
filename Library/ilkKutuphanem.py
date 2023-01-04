import random

def topla(sayi1, sayi2) -> int:
    return int(sayi1) + int(sayi2)


def rastgeleSayi(baslangic, bitis) -> int:
    return random.randint(int(baslangic), int(bitis))


def isElementVisible(self, locator):
    """Returns element visibility identified by ``locator``.

    Arguments:
    - ``locator``: The locator to find requested element. Key attributes for
                    arbitrary elements are ``id`` and ``name``. See `introduction` for
                    details about locating elements.

    Examples:
    | Is Element Visible | css=div.class |
    """
    return self.is_visible(locator)