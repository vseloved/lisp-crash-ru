(in-package :lang-detect)


(deftest detect-lang ()
  (should be eql :ru
          (detect-lang "Это тест."))
  (should be eql :uk
          (detect-lang "Це тест."))
  (should be eql :uk
          (detect-lang "Як умру то поховайте"))
  (should be eql :ru
          (detect-lang "Я помню чужное мгновенье"))
  (should be eql :ru
          (detect-lang "что"))
  (should be eql :uk
          (detect-lang "що"))
  (should be eql :ru
          (detect-lang "глокая куздра")))

(deftest cacl-stats ()
  (should be = 1
          (gethash "маленький"
                   (calc-stats '(" [[бегемотовый]]"
                                 " —"
                                 " {{устар.|ru}} маленький [[ребёнок]]")))))

(deftest split-words ()
  (should be equal '("устар" "ru" "маленький" "ребёнок")
          (split-words " {{устар.|ru}} маленький [[ребёнок]]")))
