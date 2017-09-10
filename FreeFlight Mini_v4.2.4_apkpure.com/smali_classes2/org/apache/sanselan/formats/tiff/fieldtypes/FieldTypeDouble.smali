.class public Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeDouble;
.super Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeDouble.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0xc

    const/16 v1, 0x8

    const-string v2, "Double"

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;-><init>(IILjava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getSimpleValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;

    .prologue
    .line 32
    const-string v0, "?"

    return-object v0
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
    .line 37
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 38
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeDouble;->convertDoubleToByteArray(DI)[B

    move-result-object v3

    .line 51
    :goto_0
    return-object v3

    .line 40
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, [D

    if-eqz v3, :cond_1

    .line 42
    check-cast p1, [D

    .end local p1    # "o":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [D

    .line 43
    .local v1, "numbers":[D
    invoke-virtual {p0, v1, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeDouble;->convertDoubleArrayToByteArray([DI)[B

    move-result-object v3

    goto :goto_0

    .line 45
    .end local v1    # "numbers":[D
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, [Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 47
    check-cast p1, [Ljava/lang/Double;

    .end local p1    # "o":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Double;

    .line 48
    .local v1, "numbers":[Ljava/lang/Double;
    array-length v3, v1

    new-array v2, v3, [D

    .line 49
    .local v2, "values":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 50
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0, v2, p2}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeDouble;->convertDoubleArrayToByteArray([DI)[B

    move-result-object v3

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    .end local v1    # "numbers":[Ljava/lang/Double;
    .end local v2    # "values":[D
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
