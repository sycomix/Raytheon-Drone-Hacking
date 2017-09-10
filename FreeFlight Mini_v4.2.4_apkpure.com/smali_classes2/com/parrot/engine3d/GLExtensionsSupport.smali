.class public Lcom/parrot/engine3d/GLExtensionsSupport;
.super Ljava/lang/Object;
.source "GLExtensionsSupport.java"


# static fields
.field private static final GL_ARB_texture_non_power_of_two:Ljava/lang/String; = "GL_ARB_texture_non_power_of_two"

.field private static final GL_OES_texture_npot:Ljava/lang/String; = "GL_OES_texture_npot"


# instance fields
.field private mExtensions:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isExtensionAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/engine3d/GLExtensionsSupport;->mExtensions:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/engine3d/GLExtensionsSupport;->mExtensions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 20
    const/16 v0, 0x1f03

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/engine3d/GLExtensionsSupport;->mExtensions:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public nonPowerOfTwoTextureSupported()Z
    .locals 1

    .prologue
    .line 28
    const-string v0, "GL_OES_texture_npot"

    invoke-direct {p0, v0}, Lcom/parrot/engine3d/GLExtensionsSupport;->isExtensionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GL_ARB_texture_non_power_of_two"

    invoke-direct {p0, v0}, Lcom/parrot/engine3d/GLExtensionsSupport;->isExtensionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
