.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;
.super Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JFIFPieceImageData"
.end annotation


# instance fields
.field public final imageData:[B

.field public final markerBytes:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "markerBytes"    # [B
    .param p2, "imageData"    # [B

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;-><init>()V

    .line 159
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->markerBytes:[B

    .line 160
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->imageData:[B

    .line 161
    return-void
.end method


# virtual methods
.method protected write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->markerBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 166
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->imageData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 167
    return-void
.end method
