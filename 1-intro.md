# Как начать?

## Почему Lisp?

- Культура
- Интерактивность
- Простота
- Гибкость (мультипарадигменный + глубоко изменяемый)
- Стабильность и зрелость
- Подходит для очень широкого круга людей: от художников до астрономов
- Светлая сторона силы

![yoda](img/yoda.jpg)

(c) http://raphaelgbr.deviantart.com/art/Yoda-Cartoon-100020385


## Стандарт

![Hyperspec](img/hyperspec.gif)

1985-1994

[Hyperspec](http://www.lispworks.com/documentation/HyperSpec/Front/index.htm) (см. также [hyperspec.el](http://www.emacswiki.org/emacs/CommonLispHyperspec))

[Quick Reference](http://clqr.boundp.org/)

[ANSI CL на русском](http://www.books.ru/books/ansi-common-lisp-fail-3127808/) Пола Грема — годный обзор


## Реализации

![Реализации](http://sbcl.org/sbclbutton.png)

Более 20, из которых около 8 активно поддерживаются и развиваются

В первую очередь: SBCL (на Linux) и CCL (на Mac & Win)

Также:

- CLisp — поиграться
- ABCL — на JVM, хорошо развивается
- LispWorks — крутая, но дорогая, включает IDE, кросс-платформенный графический фреймворк и многое другое


## IDE

![Emacs](img/emacs.jpg)

- Notepad (+CLisp)
- [Able](http://common-lisp.net/project/able/)
- Emacs + [SLIME](http://www.common-lisp.net/project/slime/)
- Vim + [SLIMV](http://www.vim.org/scripts/script.php?script_id=2531)
- [LispWorks IDE](http://www.lispworks.com/)
- [MCLIDE](http://mclide.com/)
- [LispIDE](http://www.daansystems.com/lispide/)


## Библиотеки

![Xach](http://img.photobucket.com/albums/v473/pufpuf/xach.jpg)

[Quicklisp](http://www.quicklisp.org/) — проще простого

[Quickdocs](http://quickdocs.org/) — документация по всем библиотекам в Quicklisp

[CLiki](http://cliki.net/) — Open Source Lisp Wiki


## Книги и руководства

![PCL](http://www.gigamonkeys.com/book/small-cover.gif)

Начинайте с [Practical Common Lisp](http://gigamonkeys.com/book) — для инженеров, или же с [Land of Lisp]() — для творческих личностей

Простые рецепты — [CL Cookbook](http://cl-cookbook.sourceforge.net/), слегка устаревшие

Вопросы стиля — [Google Common Lisp Style Guide](https://google.github.io/styleguide/lispguide.xml), [Tutorial on Good Lisp Style]()

Код из книг — [lispdoc](http://lispdoc.com/)

Спрашивайте на Stack Overflow

Продвинутые книги:

- [Paradigms of Artificial Intelligence Programming](http://norvig.com/paip.html)
  от Питера Норвина
- [Structure and Interpretation of Computer Programs](http://mitpress.mit.edu/sicp/) из MIT
- [On Lisp](http://www.paulgraham.com/onlisp.html) от Пола Грема
- [Let over Lambda](http://letoverlambda.com/) — развитие идей "On Lisp"

И, вообще: [Lisp Books](http://www.pinterest.com/vseloved/lisp-books/)


## Задание

1. Установить одну из реализаций Common Lisp (рекомендую CCL).
2. Установить Quicklisp.
3. Выбрать редактор, если вы еще не пользуетесь одной из указанных опций
   (рекомендую Emacs). Если нужно, то научиться им пользоваться на базовом уровне.
   Если нужно, настроить среду взаимодействия с Lisp'ом. Создать файл `hello.lisp`,
   в котором написать `(print "hello world")` и, используя Lisp-среду, его выполнить
   (например, с помощью `(load "hello.lisp")`). Увидеть в консоли надпись `hello world`.
4. Выбрать одну из названных книг и прочитать одну главу из нее.
   Кратко описать, какие концепции в ней оказались новыми,
   неожиданными, понравились или не понравились, и почему.
