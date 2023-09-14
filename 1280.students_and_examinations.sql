SELECT
  S.student_id,
  S.student_name,
  T.subject_name,
  SUM(CASE WHEN E.subject_name IS NULL THEN 0 ELSE 1 END) attended_exams
FROM Students as S
CROSS JOIN Subjects as T
LEFT JOIN Examinations as E
  ON S.student_id = E.student_id
  AND T.subject_name = E.subject_name
GROUP BY S.student_id, T.subject_name
ORDER BY S.student_id ASC, T.subject_name ASC;