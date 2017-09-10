.class Lcom/parrot/controller/video/ARDecoder$1;
.super Lcom/parrot/arsdk/arcodecs/ARCodecsManager;
.source "ARDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/video/ARDecoder;->initialize(Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/ARDecoder;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/ARDecoder;Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/ARDecoder;
    .param p2, "x0"    # Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/controller/video/ARDecoder$1;->this$0:Lcom/parrot/controller/video/ARDecoder;

    invoke-direct {p0, p2}, Lcom/parrot/arsdk/arcodecs/ARCodecsManager;-><init>(Lcom/parrot/arsdk/arcodecs/ARCODECS_TYPE_ENUM;)V

    return-void
.end method


# virtual methods
.method public getNextDataCallback()Lcom/parrot/arsdk/arsal/ARNativeData;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/controller/video/ARDecoder$1;->this$0:Lcom/parrot/controller/video/ARDecoder;

    invoke-static {v0}, Lcom/parrot/controller/video/ARDecoder;->access$000(Lcom/parrot/controller/video/ARDecoder;)Lcom/parrot/controller/stream/ARFrame;

    move-result-object v0

    return-object v0
.end method
