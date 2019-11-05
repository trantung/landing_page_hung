<?php
define('EMAIL_DEFAULT', 'dieulinh9196@gmail.com');
define('ADMIN', 'admin');
define('WEBMASTER', 'webmaster');
define('GMO', 'gmo');
define('SALE', 'sale');
define('TEACHER', 'teacher');
define('UPLOADTEACHER', '/teacher');
define('UPLOADSTUDENT', '/student');
define('UPLOADCONFIG', '/config');
define('UPLOADCOMMENT', 'comment');
define('UPLOADSLIDE', 'slider');
define('UPLOADPRODUCT', 'product');

define('PAGINATE',20);

define('UPLOAD_DIR', '/uploads/');
/*
    Các role của nhân viên trung tâm
*/

define('NAM', 1);
define('NU', 0);
define('BD', 3);

////// Student level
define('BEGINING', 1);
define('ADVANCE', 2);
// define('ADVANCE', 2);

////// các ngày trong tuần
define('T2', 2);
define('T3', 3);
define('T4', 4);
define('T5', 5);
define('T6', 6);
define('T7', 7);
define('CN', 8);
//status trong bang schedule_detail
define('REGISTER_LESSON', 1);
define('CANCEL_LESSON', 2);
define('CHANGE_LESSON', 3);
define('APPROVING', 4);
define('FINISH', 5);
define('WAIT_CONFIRM_FINISH', 4);
define('FINISH_LESSON', 5);
//hoc thu hoc that(type) schedule
define('TRIAL', 1);
define('OFFICAL', 2);
//status trong bang schedule
define('PROCESS_LESSON', 1);
define('FINISH_LESSON_TOTAL', 2);
define('STOP_LESSON', 3);
//giáo viên chưa được approve(giáo viên nhận học sinh nhưng chưa được gmo đồng ý)
define('WAIT_APPROVE_GMO', 4);
//email
define('SUBJECT_EMAIL', 'Xác nhận thời gian và buổi học');
define('NO_IMG', 'no image');
