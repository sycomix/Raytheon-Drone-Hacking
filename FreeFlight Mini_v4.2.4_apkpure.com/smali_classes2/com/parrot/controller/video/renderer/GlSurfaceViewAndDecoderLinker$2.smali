.class Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;
.super Ljava/lang/Object;
.source "GlSurfaceViewAndDecoderLinker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->unlink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;->this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;->this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->safeDetach()V

    .line 46
    return-void
.end method
