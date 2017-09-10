.class public final enum Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
.super Ljava/lang/Enum;
.source "Exif2Interface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/armedia/Exif2Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

.field public static final enum IMAGE_DESCRIPTION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

.field public static final enum MAKE:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

.field public static final enum ORIENTATION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;


# instance fields
.field private final mFieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field private final mTagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

.field private final mTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    const-string v1, "IMAGE_DESCRIPTION"

    const-string v3, "ImageDescription"

    sget-object v4, Lorg/apache/sanselan/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_IMAGE_DESCRIPTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;)V

    sput-object v0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->IMAGE_DESCRIPTION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    .line 95
    new-instance v3, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    const-string v4, "MAKE"

    const-string v6, "Make"

    sget-object v7, Lorg/apache/sanselan/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_MAKE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v8, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;)V

    sput-object v3, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->MAKE:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    .line 97
    new-instance v3, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    const-string v4, "ORIENTATION"

    const-string v6, "Orientation"

    sget-object v7, Lorg/apache/sanselan/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_ORIENTATION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v8, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;)V

    sput-object v3, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->ORIENTATION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    sget-object v1, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->IMAGE_DESCRIPTION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->MAKE:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->ORIENTATION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    aput-object v1, v0, v10

    sput-object v0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->$VALUES:[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "tag"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p5, "fieldType"    # Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sanselan/formats/tiff/constants/TagInfo;",
            "Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->mTagName:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->mTagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 107
    iput-object p5, p0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->mFieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->mTagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->mFieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->$VALUES:[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->mTagName:Ljava/lang/String;

    return-object v0
.end method
