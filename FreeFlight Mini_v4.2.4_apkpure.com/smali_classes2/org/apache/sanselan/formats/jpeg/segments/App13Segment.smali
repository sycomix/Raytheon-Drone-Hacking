.class public Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;
.super Lorg/apache/sanselan/formats/jpeg/segments/APPNSegment;
.source "App13Segment.java"


# instance fields
.field protected final parser:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;IILjava/io/InputStream;)V
    .locals 0
    .param p1, "parser"    # Lorg/apache/sanselan/formats/jpeg/JpegImageParser;
    .param p2, "marker"    # I
    .param p3, "marker_length"    # I
    .param p4, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/sanselan/formats/jpeg/segments/APPNSegment;-><init>(IILjava/io/InputStream;)V

    .line 47
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->parser:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;I[B)V
    .locals 2
    .param p1, "parser"    # Lorg/apache/sanselan/formats/jpeg/JpegImageParser;
    .param p2, "marker"    # I
    .param p3, "segmentData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    array-length v0, p3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;IILjava/io/InputStream;)V

    .line 41
    return-void
.end method


# virtual methods
.method public isPhotoshopJpegSegment()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->bytes:[B

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->isPhotoshopJpegSegment([B)Z

    move-result v0

    return v0
.end method

.method public parsePhotoshopSegment(Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 2
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->bytes:[B

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->isPhotoshopJpegSegment([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->bytes:[B

    invoke-virtual {v0, v1, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v0

    goto :goto_0
.end method
