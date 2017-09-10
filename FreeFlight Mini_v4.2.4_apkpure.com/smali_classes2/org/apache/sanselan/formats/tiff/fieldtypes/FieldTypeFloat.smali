.class public Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;
.super Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeFloat.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0xb

    const/4 v1, 0x4

    const-string v2, "Float"

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;-><init>(IILjava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getSimpleValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 6
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;

    .prologue
    .line 34
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Float;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v2, v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->valueOffsetBytes:[B

    iget v3, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->byteOrder:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->convertByteArrayToFloat(Ljava/lang/String;[BI)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v1, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->getRawBytes(Lorg/apache/sanselan/formats/tiff/TiffField;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    iget v5, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->byteOrder:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->convertByteArrayToFloatArray(Ljava/lang/String;[BIII)[F

    move-result-object v0

    goto :goto_0
.end method

.method public writeData(Ljava/lang/Object;I)[B
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 45
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 46
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->convertFloatToByteArray(FI)[B

    move-result-object v3

    .line 58
    :goto_0
    return-object v3

    .line 47
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, [F

    if-eqz v3, :cond_1

    .line 49
    check-cast p1, [F

    .end local p1    # "o":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [F

    .line 50
    .local v1, "numbers":[F
    invoke-virtual {p0, v1, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->convertFloatArrayToByteArray([FI)[B

    move-result-object v3

    goto :goto_0

    .line 52
    .end local v1    # "numbers":[F
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, [Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 54
    check-cast p1, [Ljava/lang/Float;

    .end local p1    # "o":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Float;

    .line 55
    .local v1, "numbers":[Ljava/lang/Float;
    array-length v3, v1

    new-array v2, v3, [F

    .line 56
    .local v2, "values":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 57
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0, v2, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeFloat;->convertFloatArrayToByteArray([FI)[B

    move-result-object v3

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    .end local v1    # "numbers":[Ljava/lang/Float;
    .end local v2    # "values":[F
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lorg/apache/sanselan/ImageWriteException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
