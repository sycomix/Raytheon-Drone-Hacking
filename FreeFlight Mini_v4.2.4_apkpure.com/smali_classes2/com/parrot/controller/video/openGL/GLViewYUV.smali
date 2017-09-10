.class public Lcom/parrot/controller/video/openGL/GLViewYUV;
.super Lcom/parrot/controller/video/openGL/GLView;
.source "GLViewYUV.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/parrot/controller/video/openGL/GLViewYUV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/openGL/GLViewYUV;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/openGL/GLView;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v1, Lcom/parrot/controller/video/openGL/GLRendererYUV;

    invoke-direct {v1}, Lcom/parrot/controller/video/openGL/GLRendererYUV;-><init>()V

    .line 13
    .local v1, "rendererYUV":Lcom/parrot/controller/video/openGL/GLRendererYUV;
    new-instance v0, Lcom/parrot/controller/video/openGL/GLRenderer;

    invoke-direct {v0, v1}, Lcom/parrot/controller/video/openGL/GLRenderer;-><init>(Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;)V

    .line 14
    .local v0, "renderer":Lcom/parrot/controller/video/openGL/GLRenderer;
    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/GLRenderer;->getTexCoords()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/controller/video/openGL/GLRendererYUV;->setTexCoords([F)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/openGL/GLViewYUV;->setRenderer(Lcom/parrot/controller/video/openGL/GLRenderer;)V

    .line 16
    return-void
.end method
