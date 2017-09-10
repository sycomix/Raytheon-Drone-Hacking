.class public Lcom/parrot/controller/video/openGL/AROpenGLTexture;
.super Ljava/lang/Object;
.source "AROpenGLTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private componentArray:[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

.field private imageSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

.field private numPictureDecoded:I

.field private textureSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;-><init>(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)V

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->imageSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    .line 18
    new-instance v0, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;-><init>(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)V

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->textureSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    .line 19
    iput v1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->numPictureDecoded:I

    .line 20
    new-array v0, v1, [Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->componentArray:[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    .line 21
    return-void
.end method


# virtual methods
.method public getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->componentArray:[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    return-object v0
.end method

.method public getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->imageSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    return-object v0
.end method

.method public getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->textureSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    return-object v0
.end method

.method public incrementNumPictureDecoded()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->numPictureDecoded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->numPictureDecoded:I

    .line 55
    return-void
.end method

.method public setComponentArray([Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;)V
    .locals 0
    .param p1, "arComponents"    # [Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->componentArray:[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    .line 50
    return-void
.end method

.method public setImageSize(Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;)V
    .locals 0
    .param p1, "imageSize"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->imageSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    .line 40
    return-void
.end method

.method public setTextureSize(Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;)V
    .locals 0
    .param p1, "textureSize"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->textureSize:Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    .line 45
    return-void
.end method
