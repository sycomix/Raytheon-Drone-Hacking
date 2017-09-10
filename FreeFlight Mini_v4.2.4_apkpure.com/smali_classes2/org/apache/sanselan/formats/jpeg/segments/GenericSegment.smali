.class public abstract Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;
.super Lorg/apache/sanselan/formats/jpeg/segments/Segment;
.source "GenericSegment.java"


# instance fields
.field public final bytes:[B


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 2
    .param p1, "marker"    # I
    .param p2, "marker_length"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;-><init>(II)V

    .line 34
    const-string v0, "Segment Data"

    const-string v1, "Invalid Segment: insufficient data"

    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    .line 36
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "marker"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;-><init>(II)V

    .line 43
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    .line 44
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->dump(Ljava/io/PrintWriter;I)V

    .line 49
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;I)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    add-int v3, v0, p2

    aget-byte v2, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
