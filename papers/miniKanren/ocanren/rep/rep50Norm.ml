open GT
open OCanren
open OCanren.Std

let topLevel x0 x1 =
  let rec rep y0 y1 =
    fresh (q1 q2)
      ( y0 === Std.Nat.zero
      &&& (y1 === Std.List.nil ())
      ||| (y0 === Std.Nat.succ Std.Nat.zero &&& (y1 === Std.( % ) Std.Nat.zero (Std.List.nil ())))
      ||| (y0 === Std.Nat.succ (Std.Nat.succ Std.Nat.zero) &&& (y1 === Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))
      ||| ( y0
          === Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))
          &&& (y1 === Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))) )
      ||| ( y0
          === Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))
          &&& (y1 === Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))) )
      ||| ( y0
          === Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))
              ) )
      ||| ( y0
          === Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))) ) )
      ||| ( y0
          === Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))) ) )
      ||| ( y0
          === Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))) ) )
      ||| ( y0
          === Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))) ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))) ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))) ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))) )
          )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero (Std.List.nil ())))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero (Std.List.nil ()))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.List.nil ())))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.List.nil ()))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.List.nil ())))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.List.nil ()))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.List.nil ())))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ Std.Nat.zero)))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.List.nil ()))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ Std.Nat.zero))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.List.nil ())))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           Std.Nat.zero)))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.List.nil ()))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              Std.Nat.zero))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.List.nil
                                                                                                                                                     ())))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 Std.Nat.zero)))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.List
                                                                                                                                                      .nil ()))))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 (Std.Nat.succ
                                                                                                                                                    Std.Nat
                                                                                                                                                    .zero))))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.( % )
                                                                                                                                                        Std.Nat
                                                                                                                                                        .zero
                                                                                                                                                        (Std
                                                                                                                                                         .List
                                                                                                                                                         .nil
                                                                                                                                                           ())))))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 (Std.Nat.succ
                                                                                                                                                    (Std.Nat
                                                                                                                                                     .succ
                                                                                                                                                       Std.Nat
                                                                                                                                                       .zero)))))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.( % )
                                                                                                                                                        Std.Nat
                                                                                                                                                        .zero
                                                                                                                                                        (Std
                                                                                                                                                         .( % )
                                                                                                                                                           Std
                                                                                                                                                           .Nat
                                                                                                                                                           .zero
                                                                                                                                                           (Std
                                                                                                                                                            .List
                                                                                                                                                            .nil
                                                                                                                                                              ()))))))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 (Std.Nat.succ
                                                                                                                                                    (Std.Nat
                                                                                                                                                     .succ
                                                                                                                                                       (Std.Nat
                                                                                                                                                        .succ
                                                                                                                                                          Std
                                                                                                                                                          .Nat
                                                                                                                                                          .zero))))))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.( % )
                                                                                                                                                        Std.Nat
                                                                                                                                                        .zero
                                                                                                                                                        (Std
                                                                                                                                                         .( % )
                                                                                                                                                           Std
                                                                                                                                                           .Nat
                                                                                                                                                           .zero
                                                                                                                                                           (Std
                                                                                                                                                            .( % )
                                                                                                                                                              Std
                                                                                                                                                              .Nat
                                                                                                                                                              .zero
                                                                                                                                                              (Std
                                                                                                                                                               .List
                                                                                                                                                               .nil
                                                                                                                                                               ())))))))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 (Std.Nat.succ
                                                                                                                                                    (Std.Nat
                                                                                                                                                     .succ
                                                                                                                                                       (Std.Nat
                                                                                                                                                        .succ
                                                                                                                                                          (Std
                                                                                                                                                           .Nat
                                                                                                                                                           .succ
                                                                                                                                                             Std
                                                                                                                                                             .Nat
                                                                                                                                                             .zero)))))))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.( % )
                                                                                                                                                        Std.Nat
                                                                                                                                                        .zero
                                                                                                                                                        (Std
                                                                                                                                                         .( % )
                                                                                                                                                           Std
                                                                                                                                                           .Nat
                                                                                                                                                           .zero
                                                                                                                                                           (Std
                                                                                                                                                            .( % )
                                                                                                                                                              Std
                                                                                                                                                              .Nat
                                                                                                                                                              .zero
                                                                                                                                                              (Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .List
                                                                                                                                                               .nil
                                                                                                                                                               ()))))))))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 (Std.Nat.succ
                                                                                                                                                    (Std.Nat
                                                                                                                                                     .succ
                                                                                                                                                       (Std.Nat
                                                                                                                                                        .succ
                                                                                                                                                          (Std
                                                                                                                                                           .Nat
                                                                                                                                                           .succ
                                                                                                                                                             (Std
                                                                                                                                                              .Nat
                                                                                                                                                              .succ
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero))))))))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.( % )
                                                                                                                                                        Std.Nat
                                                                                                                                                        .zero
                                                                                                                                                        (Std
                                                                                                                                                         .( % )
                                                                                                                                                           Std
                                                                                                                                                           .Nat
                                                                                                                                                           .zero
                                                                                                                                                           (Std
                                                                                                                                                            .( % )
                                                                                                                                                              Std
                                                                                                                                                              .Nat
                                                                                                                                                              .zero
                                                                                                                                                              (Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .List
                                                                                                                                                               .nil
                                                                                                                                                               ())))))))))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 (Std.Nat.succ
                                                                                                                                                    (Std.Nat
                                                                                                                                                     .succ
                                                                                                                                                       (Std.Nat
                                                                                                                                                        .succ
                                                                                                                                                          (Std
                                                                                                                                                           .Nat
                                                                                                                                                           .succ
                                                                                                                                                             (Std
                                                                                                                                                              .Nat
                                                                                                                                                              .succ
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .succ
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero)))))))))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.( % )
                                                                                                                                                        Std.Nat
                                                                                                                                                        .zero
                                                                                                                                                        (Std
                                                                                                                                                         .( % )
                                                                                                                                                           Std
                                                                                                                                                           .Nat
                                                                                                                                                           .zero
                                                                                                                                                           (Std
                                                                                                                                                            .( % )
                                                                                                                                                              Std
                                                                                                                                                              .Nat
                                                                                                                                                              .zero
                                                                                                                                                              (Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .List
                                                                                                                                                               .nil
                                                                                                                                                               ()))))))))))))))))))))))))))))))))))))))))))))))))))
              ) )
      ||| ( y0
          === Std.Nat.succ
                (Std.Nat.succ
                   (Std.Nat.succ
                      (Std.Nat.succ
                         (Std.Nat.succ
                            (Std.Nat.succ
                               (Std.Nat.succ
                                  (Std.Nat.succ
                                     (Std.Nat.succ
                                        (Std.Nat.succ
                                           (Std.Nat.succ
                                              (Std.Nat.succ
                                                 (Std.Nat.succ
                                                    (Std.Nat.succ
                                                       (Std.Nat.succ
                                                          (Std.Nat.succ
                                                             (Std.Nat.succ
                                                                (Std.Nat.succ
                                                                   (Std.Nat.succ
                                                                      (Std.Nat.succ
                                                                         (Std.Nat.succ
                                                                            (Std.Nat.succ
                                                                               (Std.Nat.succ
                                                                                  (Std.Nat.succ
                                                                                     (Std.Nat.succ
                                                                                        (Std.Nat.succ
                                                                                           (Std.Nat.succ
                                                                                              (Std.Nat.succ
                                                                                                 (Std.Nat.succ
                                                                                                    (Std.Nat.succ
                                                                                                       (Std.Nat.succ
                                                                                                          (Std.Nat.succ
                                                                                                             (Std.Nat.succ
                                                                                                                (Std.Nat.succ
                                                                                                                   (Std.Nat.succ
                                                                                                                      (Std.Nat.succ
                                                                                                                         (Std.Nat.succ
                                                                                                                            (Std.Nat.succ
                                                                                                                               (Std.Nat.succ
                                                                                                                                  (Std.Nat.succ
                                                                                                                                     (Std.Nat.succ
                                                                                                                                        (Std.Nat.succ
                                                                                                                                           (Std.Nat.succ
                                                                                                                                              (Std.Nat.succ
                                                                                                                                                 (Std.Nat.succ
                                                                                                                                                    (Std.Nat
                                                                                                                                                     .succ
                                                                                                                                                       (Std.Nat
                                                                                                                                                        .succ
                                                                                                                                                          (Std
                                                                                                                                                           .Nat
                                                                                                                                                           .succ
                                                                                                                                                             (Std
                                                                                                                                                              .Nat
                                                                                                                                                              .succ
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .succ
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .succ
                                                                                                                                                               q1))))))))))))))))))))))))))))))))))))))))))))))))))
          &&& ( y1
              === Std.( % ) Std.Nat.zero
                    (Std.( % ) Std.Nat.zero
                       (Std.( % ) Std.Nat.zero
                          (Std.( % ) Std.Nat.zero
                             (Std.( % ) Std.Nat.zero
                                (Std.( % ) Std.Nat.zero
                                   (Std.( % ) Std.Nat.zero
                                      (Std.( % ) Std.Nat.zero
                                         (Std.( % ) Std.Nat.zero
                                            (Std.( % ) Std.Nat.zero
                                               (Std.( % ) Std.Nat.zero
                                                  (Std.( % ) Std.Nat.zero
                                                     (Std.( % ) Std.Nat.zero
                                                        (Std.( % ) Std.Nat.zero
                                                           (Std.( % ) Std.Nat.zero
                                                              (Std.( % ) Std.Nat.zero
                                                                 (Std.( % ) Std.Nat.zero
                                                                    (Std.( % ) Std.Nat.zero
                                                                       (Std.( % ) Std.Nat.zero
                                                                          (Std.( % ) Std.Nat.zero
                                                                             (Std.( % ) Std.Nat.zero
                                                                                (Std.( % ) Std.Nat.zero
                                                                                   (Std.( % ) Std.Nat.zero
                                                                                      (Std.( % ) Std.Nat.zero
                                                                                         (Std.( % ) Std.Nat.zero
                                                                                            (Std.( % ) Std.Nat.zero
                                                                                               (Std.( % ) Std.Nat.zero
                                                                                                  (Std.( % ) Std.Nat.zero
                                                                                                     (Std.( % ) Std.Nat.zero
                                                                                                        (Std.( % ) Std.Nat.zero
                                                                                                           (Std.( % ) Std.Nat.zero
                                                                                                              (Std.( % ) Std.Nat.zero
                                                                                                                 (Std.( % ) Std.Nat.zero
                                                                                                                    (Std.( % ) Std.Nat.zero
                                                                                                                       (Std.( % ) Std.Nat.zero
                                                                                                                          (Std.( % ) Std.Nat.zero
                                                                                                                             (Std.( % ) Std.Nat.zero
                                                                                                                                (Std.( % ) Std.Nat.zero
                                                                                                                                   (Std.( % ) Std.Nat.zero
                                                                                                                                      (Std.( % ) Std.Nat.zero
                                                                                                                                         (Std.( % )
                                                                                                                                            Std.Nat.zero
                                                                                                                                            (Std.( % )
                                                                                                                                               Std.Nat.zero
                                                                                                                                               (Std.( % )
                                                                                                                                                  Std.Nat.zero
                                                                                                                                                  (Std.( % )
                                                                                                                                                     Std.Nat
                                                                                                                                                     .zero
                                                                                                                                                     (Std.( % )
                                                                                                                                                        Std.Nat
                                                                                                                                                        .zero
                                                                                                                                                        (Std
                                                                                                                                                         .( % )
                                                                                                                                                           Std
                                                                                                                                                           .Nat
                                                                                                                                                           .zero
                                                                                                                                                           (Std
                                                                                                                                                            .( % )
                                                                                                                                                              Std
                                                                                                                                                              .Nat
                                                                                                                                                              .zero
                                                                                                                                                              (Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               (
                                                                                                                                                               Std
                                                                                                                                                               .( % )
                                                                                                                                                               Std
                                                                                                                                                               .Nat
                                                                                                                                                               .zero
                                                                                                                                                               q2))))))))))))))))))))))))))))))))))))))))))))))))))
              )
          &&& _rep q1 q2 ) )
  and _rep y2 y3 =
    fresh (q1 q2) (y2 === Std.Nat.zero &&& (y3 === Std.List.nil ()) ||| (y2 === Std.Nat.succ q1 &&& (y3 === Std.( % ) Std.Nat.zero q2) &&& _rep q1 q2))
  in
  rep x0 x1
