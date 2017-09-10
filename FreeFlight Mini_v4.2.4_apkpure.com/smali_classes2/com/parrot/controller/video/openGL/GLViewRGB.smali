.class public Lcom/parrot/controller/video/openGL/GLViewRGB;
.super Lcom/parrot/controller/video/openGL/GLView;
.source "GLViewRGB.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/parrot/controller/video/openGL/GLViewRGB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/openGL/GLViewRGB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/openGL/GLView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/parrot/controller/video/openGL/GLRenderer;

    new-instance v1, Lcom/parrot/controller/video/openGL/GLRendererRGB;

    invoke-direct {v1}, Lcom/parrot/controller/video/openGL/GLRendererRGB;-><init>()V

    invoke-direct {v0, v1}, Lcom/parrot/controller/video/openGL/GLRenderer;-><init>(Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;)V

    .line 14
    .local v0, "renderer":Lcom/parrot/controller/video/openGL/GLRenderer;
    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/openGL/GLViewRGB;->setRenderer(Lcom/parrot/controller/video/openGL/GLRenderer;)V

    .line 15
    return-void
.end method
