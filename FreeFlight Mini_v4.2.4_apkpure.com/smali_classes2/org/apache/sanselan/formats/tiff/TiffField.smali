.class public Lorg/apache/sanselan/formats/tiff/TiffField;
.super Ljava/lang/Object;
.source "TiffField.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/TiffField$OversizeValueElement;
    }
.end annotation


# static fields
.field private static final ALL_TAG_MAP:Ljava/util/Map;

.field public static final Attribute_Tag:Ljava/lang/String; = "Tag"

.field private static final EXIF_TAG_MAP:Ljava/util/Map;

.field private static final GPS_TAG_MAP:Ljava/util/Map;

.field private static final TIFF_TAG_MAP:Ljava/util/Map;


# instance fields
.field public final byteOrder:I

.field public final directoryType:I

.field public final fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field public final length:I

.field public oversizeValue:[B

.field private sortHint:I

.field public final tag:I

.field public final tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

.field public final type:I

.field public final valueOffset:I

.field public final valueOffsetBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->ALL_GPS_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const-string v1, "GPS"

    invoke-static {v0, v2, v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->makeTagMap([Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->GPS_TAG_MAP:Ljava/util/Map;

    .line 627
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->ALL_TIFF_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const-string v1, "TIFF"

    invoke-static {v0, v2, v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->makeTagMap([Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_TAG_MAP:Ljava/util/Map;

    .line 629
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->ALL_EXIF_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const-string v1, "EXIF"

    invoke-static {v0, v3, v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->makeTagMap([Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_TAG_MAP:Ljava/util/Map;

    .line 631
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->ALL_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const-string v1, "All"

    invoke-static {v0, v3, v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->makeTagMap([Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->ALL_TAG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IIIII[BI)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "directoryType"    # I
    .param p3, "type"    # I
    .param p4, "Length"    # I
    .param p5, "ValueOffset"    # I
    .param p6, "ValueOffsetBytes"    # [B
    .param p7, "byteOrder"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->oversizeValue:[B

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->sortHint:I

    .line 54
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    .line 55
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->directoryType:I

    .line 56
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->type:I

    .line 57
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    .line 58
    iput p5, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->valueOffset:I

    .line 59
    iput-object p6, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->valueOffsetBytes:[B

    .line 60
    iput p7, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->byteOrder:I

    .line 62
    invoke-static {p3}, Lorg/apache/sanselan/formats/tiff/TiffField;->getFieldType(I)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 63
    invoke-static {p2, p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getTag(II)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 64
    return-void
.end method

.method private static getFieldType(I)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffField;->FIELD_TYPES:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 112
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffField;->FIELD_TYPES:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    aget-object v0, v2, v1

    .line 113
    .local v0, "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    iget v2, v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->type:I

    if-ne v2, p0, :cond_0

    .line 117
    .end local v0    # "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    :goto_1
    return-object v0

    .line 110
    .restart local v0    # "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    :cond_1
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffField;->FIELD_TYPE_UNKNOWN:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    goto :goto_1
.end method

.method private static getTag(II)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .locals 4
    .param p0, "directoryType"    # I
    .param p1, "tag"    # I

    .prologue
    .line 272
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 274
    .local v0, "key":Ljava/lang/Integer;
    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_TAG_MAP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 276
    .local v1, "possibleMatches":Ljava/util/List;
    if-nez v1, :cond_0

    .line 278
    sget-object v2, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_TAG_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 282
    :goto_0
    return-object v2

    .line 281
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getTag(IILjava/util/List;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v2

    .line 282
    .local v2, "result":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    goto :goto_0
.end method

.method private static getTag(IILjava/util/List;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .locals 5
    .param p0, "directoryType"    # I
    .param p1, "tag"    # I
    .param p2, "possibleMatches"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 124
    const/4 v1, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v1

    .line 132
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 134
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 135
    .local v1, "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-ne v2, v3, :cond_3

    .line 132
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    const/4 v2, -0x2

    if-ne p0, v2, :cond_4

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 141
    :cond_4
    const/4 v2, -0x4

    if-ne p0, v2, :cond_5

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 144
    :cond_5
    const/4 v2, -0x3

    if-ne p0, v2, :cond_6

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_DIRECTORY_GPS:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 147
    :cond_6
    const/4 v2, -0x5

    if-ne p0, v2, :cond_7

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 150
    :cond_7
    if-nez p0, :cond_8

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_DIRECTORY_IFD0:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 153
    :cond_8
    if-ne p0, v4, :cond_9

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_DIRECTORY_IFD1:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 156
    :cond_9
    const/4 v2, 0x2

    if-ne p0, v2, :cond_a

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_DIRECTORY_IFD2:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 159
    :cond_a
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_DIRECTORY_IFD3:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 165
    .end local v1    # "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    :cond_b
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_f

    .line 167
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 169
    .restart local v1    # "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-ne v2, v3, :cond_d

    .line 165
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 172
    :cond_d
    if-ltz p0, :cond_e

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;->isImageDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    :cond_e
    if-gez p0, :cond_c

    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;->isImageDirectory()Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    .line 181
    .end local v1    # "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    :cond_f
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 183
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 185
    .restart local v1    # "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    iget-object v2, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->directoryType:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    sget-object v3, Lorg/apache/sanselan/formats/tiff/TiffField;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    if-eq v2, v3, :cond_0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 215
    .end local v1    # "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    :cond_10
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_TAG_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    goto/16 :goto_0
.end method

.method private getValueDescription(Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/16 v10, 0x32

    .line 326
    if-nez p1, :cond_0

    .line 327
    const/4 v8, 0x0

    .line 505
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 329
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v8, p1, Ljava/lang/Number;

    if-eqz v8, :cond_1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 332
    :cond_1
    instance-of v8, p1, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 334
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 335
    :cond_2
    instance-of v8, p1, Ljava/util/Date;

    if-eqz v8, :cond_3

    .line 337
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "df":Ljava/text/DateFormat;
    check-cast p1, Ljava/util/Date;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 339
    .end local v0    # "df":Ljava/text/DateFormat;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v8, p1, [Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 341
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "o":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 342
    .local v3, "objects":[Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 344
    .local v4, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_4

    .line 346
    aget-object v2, v3, v1

    .line 348
    .local v2, "object":Ljava/lang/Object;
    if-le v1, v10, :cond_5

    .line 350
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "... ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    .end local v2    # "object":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 353
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_5
    if-lez v1, :cond_6

    .line 354
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    :cond_6
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v1    # "i":I
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "objects":[Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v8, p1, [I

    if-eqz v8, :cond_b

    .line 376
    check-cast p1, [I

    .end local p1    # "o":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [I

    .line 377
    .local v5, "values":[I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 379
    .restart local v4    # "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v8, v5

    if-ge v1, v8, :cond_8

    .line 381
    aget v6, v5, v1

    .line 383
    .local v6, "value":I
    if-le v1, v10, :cond_9

    .line 385
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "... ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    .end local v6    # "value":I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 388
    .restart local v6    # "value":I
    :cond_9
    if-lez v1, :cond_a

    .line 389
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    :cond_a
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 393
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .end local v5    # "values":[I
    .end local v6    # "value":I
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_b
    instance-of v8, p1, [J

    if-eqz v8, :cond_f

    .line 395
    check-cast p1, [J

    .end local p1    # "o":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [J

    .line 396
    .local v5, "values":[J
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .restart local v4    # "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v8, v5

    if-ge v1, v8, :cond_c

    .line 400
    aget-wide v6, v5, v1

    .line 402
    .local v6, "value":J
    if-le v1, v10, :cond_d

    .line 404
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "... ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    .end local v6    # "value":J
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 407
    .restart local v6    # "value":J
    :cond_d
    if-lez v1, :cond_e

    .line 408
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    :cond_e
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 412
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .end local v5    # "values":[J
    .end local v6    # "value":J
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_f
    instance-of v8, p1, [D

    if-eqz v8, :cond_13

    .line 414
    check-cast p1, [D

    .end local p1    # "o":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [D

    .line 415
    .local v5, "values":[D
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    .restart local v4    # "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v8, v5

    if-ge v1, v8, :cond_10

    .line 419
    aget-wide v6, v5, v1

    .line 421
    .local v6, "value":D
    if-le v1, v10, :cond_11

    .line 423
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "... ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    .end local v6    # "value":D
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 426
    .restart local v6    # "value":D
    :cond_11
    if-lez v1, :cond_12

    .line 427
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :cond_12
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 431
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .end local v5    # "values":[D
    .end local v6    # "value":D
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_13
    instance-of v8, p1, [B

    if-eqz v8, :cond_17

    .line 433
    check-cast p1, [B

    .end local p1    # "o":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [B

    .line 434
    .local v5, "values":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    .restart local v4    # "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v8, v5

    if-ge v1, v8, :cond_14

    .line 438
    aget-byte v6, v5, v1

    .line 440
    .local v6, "value":B
    if-le v1, v10, :cond_15

    .line 442
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "... ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    .end local v6    # "value":B
    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 445
    .restart local v6    # "value":B
    :cond_15
    if-lez v1, :cond_16

    .line 446
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    :cond_16
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 450
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .end local v5    # "values":[B
    .end local v6    # "value":B
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_17
    instance-of v8, p1, [C

    if-eqz v8, :cond_1b

    .line 452
    check-cast p1, [C

    .end local p1    # "o":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [C

    .line 453
    .local v5, "values":[C
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    .restart local v4    # "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v8, v5

    if-ge v1, v8, :cond_18

    .line 457
    aget-char v6, v5, v1

    .line 459
    .local v6, "value":C
    if-le v1, v10, :cond_19

    .line 461
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "... ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    .end local v6    # "value":C
    :cond_18
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 464
    .restart local v6    # "value":C
    :cond_19
    if-lez v1, :cond_1a

    .line 465
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_1a
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 469
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .end local v5    # "values":[C
    .end local v6    # "value":C
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1b
    instance-of v8, p1, [F

    if-eqz v8, :cond_1f

    .line 471
    check-cast p1, [F

    .end local p1    # "o":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [F

    .line 472
    .local v5, "values":[F
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 474
    .restart local v4    # "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v8, v5

    if-ge v1, v8, :cond_1c

    .line 476
    aget v6, v5, v1

    .line 478
    .local v6, "value":F
    if-le v1, v10, :cond_1d

    .line 480
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "... ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    .end local v6    # "value":F
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 483
    .restart local v6    # "value":F
    :cond_1d
    if-lez v1, :cond_1e

    .line 484
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    :cond_1e
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 505
    .end local v1    # "i":I
    .end local v4    # "result":Ljava/lang/StringBuffer;
    .end local v5    # "values":[F
    .end local v6    # "value":F
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1f
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unknown: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private getValueLengthInBytes()I
    .locals 3

    .prologue
    .line 287
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    iget v0, v2, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    .line 288
    .local v0, "unit_length":I
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    mul-int v1, v0, v2

    .line 293
    .local v1, "valueLength":I
    return v1
.end method

.method private static final makeTagMap([Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ZLjava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "tags"    # [Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p1, "ignoreDuplicates"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 595
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 597
    .local v2, "map":Ljava/util/Map;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 599
    aget-object v3, p0, v0

    .line 600
    .local v3, "tag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    new-instance v1, Ljava/lang/Integer;

    iget v5, v3, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 602
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 603
    .local v4, "tagList":Ljava/util/List;
    if-nez v4, :cond_0

    .line 605
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "tagList":Ljava/util/List;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .restart local v4    # "tagList":Ljava/util/List;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "tag":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .end local v4    # "tagList":Ljava/util/List;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 510
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 511
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;)V

    .line 512
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 513
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 522
    if-eqz p2, :cond_0

    .line 523
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 527
    return-void
.end method

.method public fillInValue(Lorg/apache/sanselan/common/byteSources/ByteSource;)V
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v2, p0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->isLocalValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValueLengthInBytes()I

    move-result v1

    .line 309
    .local v1, "valueLength":I
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->valueOffset:I

    invoke-virtual {p1, v2, v1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v0

    .line 310
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->setOversizeValue([B)V

    goto :goto_0
.end method

.method public getByteArrayValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, p0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->getRawBytes(Lorg/apache/sanselan/formats/tiff/TiffField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, p0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->getBytesLength(Lorg/apache/sanselan/formats/tiff/TiffField;)I

    move-result v0

    return v0
.end method

.method public getDescriptionWithoutValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleArrayValue()[D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 695
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 697
    const/4 v4, 0x1

    new-array v3, v4, [D

    const/4 v4, 0x0

    check-cast v2, Ljava/lang/Number;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 725
    :cond_0
    return-object v3

    .line 698
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, [Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 700
    check-cast v2, [Ljava/lang/Number;

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [Ljava/lang/Number;

    .line 701
    .local v1, "numbers":[Ljava/lang/Number;
    array-length v4, v1

    new-array v3, v4, [D

    .line 702
    .local v3, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 703
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    .end local v0    # "i":I
    .end local v1    # "numbers":[Ljava/lang/Number;
    .end local v3    # "result":[D
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, [I

    if-eqz v4, :cond_3

    .line 707
    check-cast v2, [I

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [I

    .line 708
    .local v1, "numbers":[I
    array-length v4, v1

    new-array v3, v4, [D

    .line 709
    .restart local v3    # "result":[D
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 710
    aget v4, v1, v0

    int-to-double v4, v4

    aput-wide v4, v3, v0

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 712
    .end local v0    # "i":I
    .end local v1    # "numbers":[I
    .end local v3    # "result":[D
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, [F

    if-eqz v4, :cond_4

    .line 714
    check-cast v2, [F

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [F

    .line 715
    .local v1, "numbers":[F
    array-length v4, v1

    new-array v3, v4, [D

    .line 716
    .restart local v3    # "result":[D
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 717
    aget v4, v1, v0

    float-to-double v4, v4

    aput-wide v4, v3, v0

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 719
    .end local v0    # "i":I
    .end local v1    # "numbers":[F
    .end local v3    # "result":[D
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, [D

    if-eqz v4, :cond_5

    .line 721
    check-cast v2, [D

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [D

    .line 722
    .local v1, "numbers":[D
    array-length v4, v1

    new-array v3, v4, [D

    .line 723
    .restart local v3    # "result":[D
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 724
    aget-wide v4, v1, v0

    aput-wide v4, v3, v0

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 728
    .end local v0    # "i":I
    .end local v1    # "numbers":[D
    .end local v3    # "result":[D
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_5
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDoubleValue()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 775
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 776
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public getFieldTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIntArrayValue()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 666
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 667
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    check-cast v2, Ljava/lang/Number;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 681
    :cond_0
    return-object v3

    .line 668
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, [Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 670
    check-cast v2, [Ljava/lang/Number;

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [Ljava/lang/Number;

    .line 671
    .local v1, "numbers":[Ljava/lang/Number;
    array-length v4, v1

    new-array v3, v4, [I

    .line 672
    .local v3, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 673
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "i":I
    .end local v1    # "numbers":[Ljava/lang/Number;
    .end local v3    # "result":[I
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, [I

    if-eqz v4, :cond_3

    .line 677
    check-cast v2, [I

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [I

    .line 678
    .local v1, "numbers":[I
    array-length v4, v1

    new-array v3, v4, [I

    .line 679
    .restart local v3    # "result":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 680
    aget v4, v1, v0

    aput v4, v3, v0

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 684
    .end local v0    # "i":I
    .end local v1    # "numbers":[I
    .end local v3    # "result":[I
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_3
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getIntValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 765
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 766
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getIntValueOrArraySum()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 739
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 740
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 754
    :cond_0
    return v3

    .line 741
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, [Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 743
    check-cast v2, [Ljava/lang/Number;

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [Ljava/lang/Number;

    .line 744
    .local v1, "numbers":[Ljava/lang/Number;
    const/4 v3, 0x0

    .line 745
    .local v3, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 746
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    .end local v0    # "i":I
    .end local v1    # "numbers":[Ljava/lang/Number;
    .end local v3    # "sum":I
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, [I

    if-eqz v4, :cond_3

    .line 750
    check-cast v2, [I

    .end local v2    # "o":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, [I

    .line 751
    .local v1, "numbers":[I
    const/4 v3, 0x0

    .line 752
    .restart local v3    # "sum":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 753
    aget v4, v1, v0

    add-int/2addr v3, v4

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 757
    .end local v0    # "i":I
    .end local v1    # "numbers":[I
    .end local v3    # "sum":I
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_3
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getOversizeValueElement()Lorg/apache/sanselan/formats/tiff/TiffElement;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, p0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->isLocalValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffField$OversizeValueElement;

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->valueOffset:I

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->oversizeValue:[B

    array-length v2, v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffField$OversizeValueElement;-><init>(Lorg/apache/sanselan/formats/tiff/TiffField;II)V

    goto :goto_0
.end method

.method public getSortHint()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->sortHint:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 583
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 588
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 585
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 586
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected String value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffField;->TIFF_TAG_UNKNOWN:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    if-ne v0, v1, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v0, v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v0, p0}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValueDescription(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/apache/sanselan/ImageReadException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/sanselan/ImageReadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isLocalValue()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, p0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->isLocalValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Z

    move-result v0

    return v0
.end method

.method public setOversizeValue([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->oversizeValue:[B

    .line 106
    return-void
.end method

.method public setSortHint(I)V
    .locals 0
    .param p1, "sortHint"    # I

    .prologue
    .line 794
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->sortHint:I

    .line 795
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    .local v0, "result":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v2, v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValueDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    iget-object v2, v2, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
