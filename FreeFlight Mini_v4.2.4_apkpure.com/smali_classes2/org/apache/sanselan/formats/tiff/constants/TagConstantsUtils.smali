.class public Lorg/apache/sanselan/formats/tiff/constants/TagConstantsUtils;
.super Ljava/lang/Object;
.source "TagConstantsUtils.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExifDirectoryType(I)Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TagConstantsUtils;->EXIF_DIRECTORIES:[Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 43
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TagConstantsUtils;->EXIF_DIRECTORIES:[Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;->directoryType:I

    if-ne v1, p0, :cond_0

    .line 44
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TagConstantsUtils;->EXIF_DIRECTORIES:[Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    aget-object v1, v1, v0

    .line 45
    :goto_1
    return-object v1

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    sget-object v1, Lorg/apache/sanselan/formats/tiff/constants/TagConstantsUtils;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    goto :goto_1
.end method

.method public static mergeTagLists([[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .locals 7
    .param p0, "lists"    # [[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 26
    aget-object v4, p0, v1

    array-length v4, v4

    add-int/2addr v0, v4

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    new-array v3, v0, [Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 30
    .local v3, "result":[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    const/4 v2, 0x0

    .line 31
    .local v2, "index":I
    const/4 v1, 0x0

    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 33
    aget-object v4, p0, v1

    const/4 v5, 0x0

    aget-object v6, p0, v1

    array-length v6, v6

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    aget-object v4, p0, v1

    array-length v4, v4

    add-int/2addr v2, v4

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_1
    return-object v3
.end method
