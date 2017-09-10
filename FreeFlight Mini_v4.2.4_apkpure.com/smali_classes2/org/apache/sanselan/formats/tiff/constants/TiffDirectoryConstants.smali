.class public interface abstract Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;
.super Ljava/lang/Object;
.source "TiffDirectoryConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;
    }
.end annotation


# static fields
.field public static final DIRECTORY_TYPE_DIR_0:I = 0x0

.field public static final DIRECTORY_TYPE_DIR_1:I = 0x1

.field public static final DIRECTORY_TYPE_DIR_2:I = 0x2

.field public static final DIRECTORY_TYPE_DIR_3:I = 0x3

.field public static final DIRECTORY_TYPE_DIR_4:I = 0x4

.field public static final DIRECTORY_TYPE_EXIF:I = -0x2

.field public static final DIRECTORY_TYPE_GPS:I = -0x3

.field public static final DIRECTORY_TYPE_INTEROPERABILITY:I = -0x4

.field public static final DIRECTORY_TYPE_MAKER_NOTES:I = -0x5

.field public static final DIRECTORY_TYPE_ROOT:I = 0x0

.field public static final DIRECTORY_TYPE_SUB:I = 0x1

.field public static final DIRECTORY_TYPE_SUB0:I = 0x1

.field public static final DIRECTORY_TYPE_SUB1:I = 0x2

.field public static final DIRECTORY_TYPE_SUB2:I = 0x3

.field public static final DIRECTORY_TYPE_THUMBNAIL:I = 0x2

.field public static final DIRECTORY_TYPE_UNKNOWN:I = -0x1

.field public static final EXIF_DIRECTORIES:[Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_GPS:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_IFD3:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final EXIF_DIRECTORY_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final TIFF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final TIFF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final TIFF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final TIFF_DIRECTORY_IFD3:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

.field public static final TIFF_DIRECTORY_ROOT:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;

    const-string v1, "IFD0"

    invoke-direct {v0, v3, v1}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 83
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 84
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_ROOT:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 86
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;

    const-string v1, "IFD1"

    invoke-direct {v0, v4, v1}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 88
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 90
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;

    const-string v1, "IFD2"

    invoke-direct {v0, v5, v1}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 92
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 94
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;

    const-string v1, "IFD3"

    invoke-direct {v0, v6, v1}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Image;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD3:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 96
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD3:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_IFD3:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 98
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_SUB_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 99
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 100
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD3:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 102
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;

    const/4 v1, -0x4

    const-string v2, "Interop IFD"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 104
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;

    const/4 v1, -0x5

    const-string v2, "Maker Notes"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 106
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;

    const/4 v1, -0x2

    const-string v2, "Exif IFD"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 108
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;

    const/4 v1, -0x3

    const-string v2, "GPS IFD"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType$Special;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_GPS:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .line 113
    const/16 v0, 0xe

    new-array v0, v0, [Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_ROOT:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->TIFF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_SUB_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORY_GPS:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;->EXIF_DIRECTORIES:[Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    return-void
.end method
