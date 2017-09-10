.class public abstract Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
.super Lorg/apache/sanselan/common/BinaryFileFunctions;
.source "FieldType.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# instance fields
.field public final length:I

.field public final name:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileFunctions;-><init>()V

    .line 33
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->type:I

    .line 34
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    .line 35
    iput-object p3, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static final getStubLocalValue()[B
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [B

    return-object v0
.end method


# virtual methods
.method public getBytesLength(Lorg/apache/sanselan/formats/tiff/TiffField;)I
    .locals 2
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 45
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 46
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "Unknown field type"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    iget v1, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDisplayValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/String;
    .locals 2
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->getSimpleValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 68
    const-string v1, "NULL"

    .line 69
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getRawBytes(Lorg/apache/sanselan/formats/tiff/TiffField;)[B
    .locals 5
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->isLocalValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    iget v3, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    mul-int v0, v2, v3

    .line 77
    .local v0, "rawLength":I
    new-array v1, v0, [B

    .line 78
    .local v1, "result":[B
    iget-object v2, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->valueOffsetBytes:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .end local v0    # "rawLength":I
    .end local v1    # "result":[B
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->oversizeValue:[B

    goto :goto_0
.end method

.method public abstract getSimpleValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation
.end method

.method public final getStubValue(I)[B
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    mul-int/2addr v0, p1

    new-array v0, v0, [B

    return-object v0
.end method

.method public isLocalValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Z
    .locals 2
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;

    .prologue
    .line 40
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    iget v1, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    mul-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ". type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeData(Ljava/lang/Object;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation
.end method
