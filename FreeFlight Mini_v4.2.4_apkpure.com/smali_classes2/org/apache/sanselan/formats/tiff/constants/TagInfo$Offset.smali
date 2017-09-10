.class public Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Offset;
.super Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
.source "TagInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Offset"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "dataType"    # Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p4, "length"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "dataType"    # Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p4, "length"    # I
    .param p5, "exifDirectory"    # Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .prologue
    .line 150
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "dataTypes"    # [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p4, "length"    # I
    .param p5, "exifDirectory"    # Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .prologue
    .line 144
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;-><init>(Ljava/lang/String;I[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V

    .line 145
    return-void
.end method


# virtual methods
.method public isOffset()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method
