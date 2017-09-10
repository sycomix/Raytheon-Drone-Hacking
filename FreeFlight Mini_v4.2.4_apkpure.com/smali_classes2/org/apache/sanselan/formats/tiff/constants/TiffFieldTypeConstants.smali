.class public interface abstract Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;
.super Ljava/lang/Object;
.source "TiffFieldTypeConstants.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;


# static fields
.field public static final FIELD_TYPES:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_ANY:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

.field public static final FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

.field public static final FIELD_TYPE_DESCRIPTION_ANY:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_ASCII:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_BYTE:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_BYTE_OR_SHORT:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_LONG:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_LONG_OR_SHORT:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_RATIONAL:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_SHORT:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_SHORT_OR_LONG:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DESCRIPTION_UNKNOWN:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_DOUBLE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_FLOAT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

.field public static final FIELD_TYPE_SBYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

.field public static final FIELD_TYPE_SLONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_SRATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_SSHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_UNDEFINED:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public static final FIELD_TYPE_UNKNOWN:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    const-string v1, "Byte"

    invoke-direct {v0, v3, v1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    .line 36
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    const-string v1, "ASCII"

    invoke-direct {v0, v5, v1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    .line 39
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const-string v1, "Short"

    invoke-direct {v0, v6, v1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    .line 42
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const-string v1, "Long"

    invoke-direct {v0, v7, v1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    .line 45
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    const/4 v1, 0x5

    const-string v2, "Rational"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    .line 48
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v1, 0x6

    const-string v2, "SByte"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SBYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 50
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v1, 0x7

    const-string v2, "Undefined"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_UNDEFINED:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 52
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v1, 0x8

    const-string v2, "SShort"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SSHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 55
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v1, 0x9

    const-string v2, "SLong"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SLONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 58
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    const/16 v1, 0xa

    const-string v2, "SRational"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SRATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 61
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_FLOAT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 63
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeDouble;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeDouble;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DOUBLE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 65
    new-instance v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeUnknown;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeUnknown;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_UNKNOWN:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 67
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SBYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_UNDEFINED:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SSHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SLONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SRATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_FLOAT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DOUBLE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPES:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 74
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPES:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ANY:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 76
    new-array v0, v3, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_LONG:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 79
    new-array v0, v3, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_SHORT:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 82
    new-array v0, v5, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_SHORT_OR_LONG:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 85
    new-array v0, v3, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_ASCII:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 88
    new-array v0, v5, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_LONG_OR_SHORT:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 91
    new-array v0, v3, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_RATIONAL:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 94
    new-array v0, v5, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_BYTE_OR_SHORT:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 97
    new-array v0, v3, [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_BYTE:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 100
    sget-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ANY:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_ANY:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_DESCRIPTION_UNKNOWN:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    return-void
.end method
