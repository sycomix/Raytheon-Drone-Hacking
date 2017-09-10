.class public Lcom/parrot/engine3d/GLShaderFactory;
.super Ljava/lang/Object;
.source "GLShaderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLShaderFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShaderCodeFromFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v3, "fileContent":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v5, 0x200

    new-array v4, v5, [C

    .line 44
    .local v4, "readBuffer":[C
    :goto_0
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 45
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "vertexShaderResourceID"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .param p2, "fragmentShaderResourceId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/engine3d/GLShaderFactory;->getShaderCodeFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "vertexCode":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/engine3d/GLShaderFactory;->getShaderCodeFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "fragmentCode":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/parrot/engine3d/GLShaderFactory;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/engine3d/GLShader;

    move-result-object v2

    return-object v2
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/engine3d/GLShader;
    .locals 5
    .param p0, "vertexShaderCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragmentShaderCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    const v3, 0x8b31

    invoke-static {v3, p0}, Lcom/parrot/engine3d/GLShaderFactory;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 56
    .local v2, "vertexShader":I
    const v3, 0x8b30

    invoke-static {v3, p1}, Lcom/parrot/engine3d/GLShaderFactory;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "fragmentShader":I
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const-string v3, "GLShaderFactory"

    const-string v4, "Failed to compile shader, aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v3, 0x0

    .line 75
    :goto_0
    return-object v3

    .line 63
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 64
    .local v1, "program":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 65
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 67
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 70
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 71
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 72
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 73
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 75
    new-instance v3, Lcom/parrot/engine3d/GLShader;

    invoke-direct {v3, v1}, Lcom/parrot/engine3d/GLShader;-><init>(I)V

    goto :goto_0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 6
    .param p0, "type"    # I
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 21
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 22
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 23
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 25
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 26
    .local v0, "isCompiled":[I
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 27
    aget v3, v0, v2

    if-nez v3, :cond_0

    .line 28
    const-string v3, "GLShaderFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compile mShader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v1, v2

    .line 33
    .end local v0    # "isCompiled":[I
    .end local v1    # "shader":I
    :cond_0
    return v1
.end method
