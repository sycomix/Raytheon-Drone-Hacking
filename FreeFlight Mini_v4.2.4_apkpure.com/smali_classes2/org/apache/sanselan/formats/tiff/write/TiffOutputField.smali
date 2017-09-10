.class public Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
.super Ljava/lang/Object;
.source "TiffOutputField.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# static fields
.field private static final newline:Ljava/lang/String;


# instance fields
.field private bytes:[B

.field public final count:I

.field public final fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

.field private final separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

.field private sortHint:I

.field public final tag:I

.field public final tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->newline:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p3, "fieldType"    # Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p4, "count"    # I
    .param p5, "bytes"    # [B

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->sortHint:I

    .line 47
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    .line 48
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 49
    iput-object p3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 50
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->count:I

    .line 51
    iput-object p5, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    .line 53
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Field Seperate value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    invoke-direct {v1, v0, p5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 6
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p2, "tagtype"    # Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p3, "count"    # I
    .param p4, "bytes"    # [B

    .prologue
    .line 41
    iget v1, p1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 42
    return-void
.end method

.method public static create(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ILjava/lang/Number;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 6
    .param p0, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p1, "byteOrder"    # I
    .param p2, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 68
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    array-length v0, v0

    if-ge v0, v4, :cond_1

    .line 69
    :cond_0
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Tag has no default data type."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 72
    .local v3, "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->length:I

    if-eq v0, v4, :cond_2

    .line 73
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Tag does not expect a single value."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    invoke-virtual {v3, p2, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->writeData(Ljava/lang/Object;I)[B

    move-result-object v5

    .line 77
    .local v5, "bytes":[B
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    return-object v0
.end method

.method public static create(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;ILjava/lang/String;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 6
    .param p0, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p1, "byteOrder"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    if-nez v0, :cond_0

    .line 101
    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    .line 107
    .local v3, "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    :goto_0
    invoke-virtual {v3, p2, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->writeData(Ljava/lang/Object;I)[B

    move-result-object v5

    .line 109
    .local v5, "bytes":[B
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    const/4 v4, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    return-object v0

    .line 102
    .end local v3    # "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .end local v5    # "bytes":[B
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->FIELD_TYPE_DESCRIPTION_ASCII:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    if-ne v0, v1, :cond_1

    .line 103
    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    .restart local v3    # "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    goto :goto_0

    .line 105
    .end local v3    # "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    :cond_1
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Tag has unexpected data type."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I[Ljava/lang/Number;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 6
    .param p0, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p1, "byteOrder"    # I
    .param p2, "value"    # [Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Tag has no default data type."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->dataTypes:[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 87
    .local v3, "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->length:I

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 88
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Tag does not expect a single value."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    invoke-virtual {v3, p2, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->writeData(Ljava/lang/Object;I)[B

    move-result-object v5

    .line 92
    .local v5, "bytes":[B
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    array-length v4, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    return-object v0
.end method

.method protected static final createOffsetField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .locals 6
    .param p0, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p1, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    sget-object v2, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    new-array v3, v5, [I

    aput v4, v3, v4

    invoke-virtual {v2, v3, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v2

    invoke-direct {v0, p0, v1, v5, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    return-object v0
.end method


# virtual methods
.method protected getSeperateValue()Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    return-object v0
.end method

.method public getSortHint()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->sortHint:I

    return v0
.end method

.method protected isLocalValue()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setData([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    const-string v1, "Cannot change size of value."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    .line 168
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->updateValue([B)V

    .line 173
    :cond_1
    return-void
.end method

.method public setSortHint(I)V
    .locals 0
    .param p1, "sortHint"    # I

    .prologue
    .line 210
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->sortHint:I

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const-string p1, ""

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 190
    sget-object v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    sget-object v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 198
    sget-object v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected writeField(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 5
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 122
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 123
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    iget v2, v2, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->type:I

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 124
    iget v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 126
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v2, :cond_0

    .line 129
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    const-string v3, "Unexpected separate value item."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 131
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Local value has invalid length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_1
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->writeByteArray([B)V

    .line 135
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v2, v2

    rsub-int/lit8 v1, v2, 0x4

    .line 136
    .local v1, "remainder":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 137
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "i":I
    .end local v1    # "remainder":I
    :cond_2
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    if-nez v2, :cond_3

    .line 141
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    const-string v3, "Missing separate value item."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_3
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->getOffset()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 145
    :cond_4
    return-void
.end method
