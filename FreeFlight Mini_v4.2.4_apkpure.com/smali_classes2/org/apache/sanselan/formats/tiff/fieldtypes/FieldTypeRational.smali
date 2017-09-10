.class public Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;
.super Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeRational.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;-><init>(IILjava/lang/String;)V

    .line 30
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
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->name:Ljava/lang/String;

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

    move-result-object v0

    iget-object v1, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->oversizeValue:[B

    iget v2, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->byteOrder:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertByteArrayToRational(Ljava/lang/String;[BI)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->name:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->getRawBytes(Lorg/apache/sanselan/formats/tiff/TiffField;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    iget v5, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->byteOrder:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertByteArrayToRationalArray(Ljava/lang/String;[BIII)[Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v0

    goto :goto_0
.end method

.method public writeData(III)[B
    .locals 3
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v0, v1, [I

    aput p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->writeData([I[II)[B

    move-result-object v0

    return-object v0
.end method

.method public writeData(Ljava/lang/Object;I)[B
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v6, p1, Lorg/apache/sanselan/common/RationalNumber;

    if-eqz v6, :cond_0

    .line 45
    check-cast p1, Lorg/apache/sanselan/common/RationalNumber;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertRationalToByteArray(Lorg/apache/sanselan/common/RationalNumber;I)[B

    move-result-object v6

    .line 80
    :goto_0
    return-object v6

    .line 46
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v6, p1, [Lorg/apache/sanselan/common/RationalNumber;

    if-eqz v6, :cond_1

    .line 48
    check-cast p1, [Lorg/apache/sanselan/common/RationalNumber;

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [Lorg/apache/sanselan/common/RationalNumber;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertRationalArrayToByteArray([Lorg/apache/sanselan/common/RationalNumber;I)[B

    move-result-object v6

    goto :goto_0

    .line 51
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v6, p1, Ljava/lang/Number;

    if-eqz v6, :cond_2

    move-object v2, p1

    .line 53
    check-cast v2, Ljava/lang/Number;

    .line 54
    .local v2, "number":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/sanselan/common/RationalNumberUtilities;->getRationalNumber(D)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v4

    .line 56
    .local v4, "rationalNumber":Lorg/apache/sanselan/common/RationalNumber;
    invoke-virtual {p0, v4, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertRationalToByteArray(Lorg/apache/sanselan/common/RationalNumber;I)[B

    move-result-object v6

    goto :goto_0

    .line 58
    .end local v2    # "number":Ljava/lang/Number;
    .end local v4    # "rationalNumber":Lorg/apache/sanselan/common/RationalNumber;
    :cond_2
    instance-of v6, p1, [Ljava/lang/Number;

    if-eqz v6, :cond_4

    .line 60
    check-cast p1, [Ljava/lang/Number;

    .end local p1    # "o":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Number;

    .line 61
    .local v1, "numbers":[Ljava/lang/Number;
    array-length v6, v1

    new-array v5, v6, [Lorg/apache/sanselan/common/RationalNumber;

    .line 62
    .local v5, "rationalNumbers":[Lorg/apache/sanselan/common/RationalNumber;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_3

    .line 64
    aget-object v2, v1, v0

    .line 65
    .restart local v2    # "number":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/sanselan/common/RationalNumberUtilities;->getRationalNumber(D)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v6

    aput-object v6, v5, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v2    # "number":Ljava/lang/Number;
    :cond_3
    invoke-virtual {p0, v5, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertRationalArrayToByteArray([Lorg/apache/sanselan/common/RationalNumber;I)[B

    move-result-object v6

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    .end local v1    # "numbers":[Ljava/lang/Number;
    .end local v5    # "rationalNumbers":[Lorg/apache/sanselan/common/RationalNumber;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v6, p1, [D

    if-eqz v6, :cond_6

    .line 72
    check-cast p1, [D

    .end local p1    # "o":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [D

    .line 73
    .local v1, "numbers":[D
    array-length v6, v1

    new-array v5, v6, [Lorg/apache/sanselan/common/RationalNumber;

    .line 74
    .restart local v5    # "rationalNumbers":[Lorg/apache/sanselan/common/RationalNumber;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v6, v1

    if-ge v0, v6, :cond_5

    .line 76
    aget-wide v2, v1, v0

    .line 77
    .local v2, "number":D
    invoke-static {v2, v3}, Lorg/apache/sanselan/common/RationalNumberUtilities;->getRationalNumber(D)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v6

    aput-object v6, v5, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    .end local v2    # "number":D
    :cond_5
    invoke-virtual {p0, v5, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertRationalArrayToByteArray([Lorg/apache/sanselan/common/RationalNumber;I)[B

    move-result-object v6

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    .end local v1    # "numbers":[D
    .end local v5    # "rationalNumbers":[Lorg/apache/sanselan/common/RationalNumber;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    new-instance v6, Lorg/apache/sanselan/ImageWriteException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public writeData([I[II)[B
    .locals 1
    .param p1, "numerators"    # [I
    .param p2, "denominators"    # [I
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->convertIntArrayToRationalArray([I[II)[B

    move-result-object v0

    return-object v0
.end method
