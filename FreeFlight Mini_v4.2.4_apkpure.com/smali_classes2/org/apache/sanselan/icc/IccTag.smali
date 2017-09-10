.class public Lorg/apache/sanselan/icc/IccTag;
.super Ljava/lang/Object;
.source "IccTag.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;
.implements Lorg/apache/sanselan/icc/IccConstants;


# instance fields
.field public data:[B

.field private data_type_signature:I

.field public final fIccTagType:Lorg/apache/sanselan/icc/IccTagType;

.field private itdt:Lorg/apache/sanselan/icc/IccTagDataType;

.field public final length:I

.field public final offset:I

.field public final signature:I


# direct methods
.method public constructor <init>(IIILorg/apache/sanselan/icc/IccTagType;)V
    .locals 1
    .param p1, "signature"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "fIccTagType"    # Lorg/apache/sanselan/icc/IccTagType;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    .line 45
    iput-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    .line 38
    iput p1, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    .line 39
    iput p2, p0, Lorg/apache/sanselan/icc/IccTag;->offset:I

    .line 40
    iput p3, p0, Lorg/apache/sanselan/icc/IccTag;->length:I

    .line 41
    iput-object p4, p0, Lorg/apache/sanselan/icc/IccTag;->fIccTagType:Lorg/apache/sanselan/icc/IccTagType;

    .line 42
    return-void
.end method

.method private getIccTagDataType(I)Lorg/apache/sanselan/icc/IccTagDataType;
    .locals 2
    .param p1, "quad"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/sanselan/icc/IccTag;->IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 68
    sget-object v1, Lorg/apache/sanselan/icc/IccTag;->IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/apache/sanselan/icc/IccTagDataType;->signature:I

    if-ne v1, p1, :cond_0

    .line 69
    sget-object v1, Lorg/apache/sanselan/icc/IccTag;->IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

    aget-object v1, v1, v0

    .line 71
    :goto_1
    return-object v1

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "tag signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v8, [B

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    :goto_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 127
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "data type signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v8, [B

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "IccTagType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "IccTagType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    iget-object v1, v1, Lorg/apache/sanselan/icc/IccTagDataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    iget-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    invoke-virtual {v0, p2, v1}, Lorg/apache/sanselan/icc/IccTagDataType;->dump(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 78
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0, p1}, Lorg/apache/sanselan/icc/IccTag;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 81
    return-void
.end method

.method public setData([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    .line 52
    new-instance v0, Lorg/apache/sanselan/common/BinaryInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v2, 0x4d

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 54
    .local v0, "bis":Lorg/apache/sanselan/common/BinaryInputStream;
    const-string v1, "data type signature"

    const-string v2, "ICC: corrupt tag data"

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    .line 57
    iget v1, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    invoke-direct {p0, v1}, Lorg/apache/sanselan/icc/IccTag;->getIccTagDataType(I)Lorg/apache/sanselan/icc/IccTagDataType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    .line 63
    return-void
.end method
