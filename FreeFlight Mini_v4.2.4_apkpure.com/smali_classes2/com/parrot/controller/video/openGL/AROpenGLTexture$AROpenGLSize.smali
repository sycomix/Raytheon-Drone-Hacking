.class public Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
.super Ljava/lang/Object;
.source "AROpenGLTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/openGL/AROpenGLTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AROpenGLSize"
.end annotation


# instance fields
.field private height:F

.field final synthetic this$0:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)V
    .locals 1
    .param p1, "this$0"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->this$0:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->width:F

    .line 66
    iput v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->height:F

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/video/openGL/AROpenGLTexture;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->this$0:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->width:F

    .line 72
    iput p3, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->height:F

    .line 73
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->width:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->height:F

    .line 93
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 87
    iput p1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->width:F

    .line 88
    return-void
.end method
