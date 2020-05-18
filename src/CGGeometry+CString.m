#import "CGGeometry+CString.h"

#import "import-private.h"

#include <stdio.h>

// todo: use MulleObjC_asprintf here
char   *CGPointCStringDescription( CGPoint point)
{
   auto char   buf[ 256];
   auto char  *s;
   size_t      required;

   required = snprintf( buf, sizeof( buf), "%.2f %.2f",
            point.x,
            point.y);

   if( required >= sizeof( buf))
   {
      s = mulle_malloc( required + 1);
      sprintf( s, "%.2f %.2f",
            point.x,
            point.y);
   }
   else
   {
      s = mulle_strdup( buf);
   }
   MulleObjCAutoreleaseAllocation( s, NULL);
   return( s);
}


char   *CGRectCStringDescription( CGRect rect)
{
   auto char   buf[ 256];
   char       *s;
   size_t      required;

   required = snprintf( buf, sizeof( buf), "%.2f %.2f %.2f %.2f",
            rect.origin.x,
            rect.origin.y,
            rect.size.width,
            rect.size.height);

   if( required >= sizeof( buf))
   {
      s = mulle_malloc( required + 1);
      sprintf( s, "%.2f %.2f %.2f %.2f",
            rect.origin.x,
            rect.origin.y,
            rect.size.width,
            rect.size.height);
   }
   else
      s = mulle_strdup( buf);

   MulleObjCAutoreleaseAllocation( s, NULL);
   return( s);
}
