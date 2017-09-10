.class public abstract Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "TransparencyFilter.java"


# instance fields
.field protected final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;->bytes:[B

    .line 32
    return-void
.end method


# virtual methods
.method public abstract filter(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
