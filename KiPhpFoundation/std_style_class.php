<?php
class std_style_class
//
// $Id: std_style_class.php 7041 2020-04-15 23:21:02Z kevinanlipscomb $
//
{
//
// AolEmailClientWarning
//
static function AolEmailClientWarning()
   {
   return "<table bgcolor=#ff9933 cellpadding=5 width=40%>\n"
        . "   <tr>\n"
        . "      <td align=center>\n"
        . "         <font face=arial>\n"
        . "            <b>AOL USERS</b>\n"
        . "            <hr>\n"
        . "            If your regular email program does not correctly handle the access link that OSCAR sends to you, "
        . "            try retrieving it by logging into <a href=http://webmail.aol.com><b>webmail.aol.com</b></a> "
        . "            instead.\n"
        . "         </font>\n"
        . "      </td>\n"
        . "   </tr>\n"
        . "</table>\n";
   }
//
// CatchUpBlurb
//
static function CatchUpBlurb()
   {
   return "<small><a href=foundation-whats-new.phtml><b>Catch up</b></a> on changes to the KVEO-IT-PROJECT Foundation "
        . "Class Library.</small>\n"
        . "<hr>\n";
   }
//
// END std_style_class
//
}
?>
