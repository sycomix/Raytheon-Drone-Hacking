.class public interface abstract Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;
.super Ljava/lang/Object;
.source "ARRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/openGL/ARRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShaderRenderingInterface"
.end annotation


# virtual methods
.method public abstract applyTexture(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)V
.end method

.method public abstract deleteTextures()V
.end method

.method public abstract fragmentShader()Ljava/lang/String;
.end method

.method public abstract generateTextures()V
.end method

.method public abstract isValid()Z
.end method

.method public abstract prepareRender()Z
.end method

.method public abstract resolveUniforms(I)V
.end method

.method public abstract shouldUpdateTexCoods(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)Z
.end method
