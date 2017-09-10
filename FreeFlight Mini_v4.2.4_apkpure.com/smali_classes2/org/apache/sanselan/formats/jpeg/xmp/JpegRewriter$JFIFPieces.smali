.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
.super Ljava/lang/Object;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JFIFPieces"
.end annotation


# instance fields
.field public final pieces:Ljava/util/List;

.field public final segmentPieces:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "pieces"    # Ljava/util/List;
    .param p2, "segmentPieces"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->segmentPieces:Ljava/util/List;

    .line 62
    return-void
.end method
