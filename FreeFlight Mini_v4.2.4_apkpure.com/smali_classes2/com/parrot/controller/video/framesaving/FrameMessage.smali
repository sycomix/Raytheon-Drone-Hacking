.class public Lcom/parrot/controller/video/framesaving/FrameMessage;
.super Ljava/lang/Object;
.source "FrameMessage.java"


# instance fields
.field public final mjpeg:[B

.field public final timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "mjpeg"    # [B
    .param p2, "timestamp"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/parrot/controller/video/framesaving/FrameMessage;->mjpeg:[B

    .line 13
    iput-object p2, p0, Lcom/parrot/controller/video/framesaving/FrameMessage;->timestamp:Ljava/lang/String;

    .line 14
    return-void
.end method
