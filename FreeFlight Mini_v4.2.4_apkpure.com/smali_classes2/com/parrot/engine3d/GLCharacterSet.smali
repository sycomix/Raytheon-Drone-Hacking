.class public Lcom/parrot/engine3d/GLCharacterSet;
.super Ljava/lang/Object;
.source "GLCharacterSet.java"


# static fields
.field private static final CHARACTER_HEIGHT:F = 34.0f

.field private static final CHARACTER_SET:Ljava/lang/String; = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

.field private static final CHARACTER_WIDTH:F = 29.5f

.field private static final LINE_SIZE:I = 0x10

.field private static final Y_OFFSET:F = 5.0f


# instance fields
.field private mCharacterSetTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCharacterShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGlCharacterSet:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lcom/parrot/engine3d/objects/GLCharacter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mGlCharacterSet:Ljava/util/Map;

    .line 35
    return-void
.end method


# virtual methods
.method public getCharacters(Ljava/lang/String;)[Lcom/parrot/engine3d/objects/GLCharacter;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [Lcom/parrot/engine3d/objects/GLCharacter;

    .line 125
    .local v0, "characters":[Lcom/parrot/engine3d/objects/GLCharacter;
    const/4 v1, 0x0

    .local v1, "it":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 126
    iget-object v3, p0, Lcom/parrot/engine3d/GLCharacterSet;->mGlCharacterSet:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/engine3d/objects/GLCharacter;

    aput-object v3, v0, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "characters":[Lcom/parrot/engine3d/objects/GLCharacter;
    .end local v1    # "it":I
    .end local v2    # "length":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public init(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "characterSetTextureResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mGlCharacterSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mGlCharacterSet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 42
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->createAndInit(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterSetTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    .line 43
    return-void
.end method

.method public loadCharacter(Landroid/content/res/Resources;Ljava/lang/Character;)Lcom/parrot/engine3d/objects/GLCharacter;
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "character"    # Ljava/lang/Character;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 63
    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mGlCharacterSet:Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 64
    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mGlCharacterSet:Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/engine3d/objects/GLCharacter;

    .line 96
    :goto_0
    return-object v9

    .line 65
    :cond_0
    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterSetTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v9, :cond_1

    .line 66
    const-string v9, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 67
    .local v0, "characterIndex":I
    div-int/lit8 v1, v0, 0x10

    .line 68
    .local v1, "characterLine":I
    rem-int/lit8 v4, v0, 0x10

    .line 70
    .local v4, "characterRow":I
    int-to-float v9, v4

    const/high16 v10, 0x41ec0000    # 29.5f

    mul-float v2, v9, v10

    .line 71
    .local v2, "characterPosX":F
    int-to-float v9, v1

    const/high16 v10, 0x42080000    # 34.0f

    mul-float v3, v9, v10

    .line 73
    .local v3, "characterPosY":F
    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterSetTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v9}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->getWidth()I

    move-result v9

    int-to-float v8, v9

    .line 74
    .local v8, "textureWidth":F
    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterSetTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v9}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->getHeight()I

    move-result v9

    int-to-float v7, v9

    .line 76
    .local v7, "textureHeight":F
    const/16 v9, 0x8

    new-array v5, v9, [F

    const/4 v9, 0x0

    div-float v10, v2, v8

    aput v10, v5, v9

    const/4 v9, 0x1

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v10, v3

    const/high16 v11, 0x42080000    # 34.0f

    add-float/2addr v10, v11

    div-float/2addr v10, v7

    aput v10, v5, v9

    const/4 v9, 0x2

    const/high16 v10, 0x41ec0000    # 29.5f

    add-float/2addr v10, v2

    div-float/2addr v10, v8

    aput v10, v5, v9

    const/4 v9, 0x3

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v10, v3

    const/high16 v11, 0x42080000    # 34.0f

    add-float/2addr v10, v11

    div-float/2addr v10, v7

    aput v10, v5, v9

    const/4 v9, 0x4

    div-float v10, v2, v8

    aput v10, v5, v9

    const/4 v9, 0x5

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v10, v3

    div-float/2addr v10, v7

    aput v10, v5, v9

    const/4 v9, 0x6

    const/high16 v10, 0x41ec0000    # 29.5f

    add-float/2addr v10, v2

    div-float/2addr v10, v8

    aput v10, v5, v9

    const/4 v9, 0x7

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v10, v3

    div-float/2addr v10, v7

    aput v10, v5, v9

    .line 90
    .local v5, "characterTexCords":[F
    new-instance v6, Lcom/parrot/engine3d/objects/GLCharacter;

    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    iget-object v10, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterSetTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-direct {v6, v9, v10, v5}, Lcom/parrot/engine3d/objects/GLCharacter;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;[F)V

    .line 91
    .local v6, "glCharacter":Lcom/parrot/engine3d/objects/GLCharacter;
    invoke-virtual {v6, p1}, Lcom/parrot/engine3d/objects/GLCharacter;->createGLResources(Landroid/content/res/Resources;)Z

    .line 93
    iget-object v9, p0, Lcom/parrot/engine3d/GLCharacterSet;->mGlCharacterSet:Ljava/util/Map;

    invoke-interface {v9, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v6

    .line 94
    goto :goto_0

    .line 96
    .end local v0    # "characterIndex":I
    .end local v1    # "characterLine":I
    .end local v2    # "characterPosX":F
    .end local v3    # "characterPosY":F
    .end local v4    # "characterRow":I
    .end local v5    # "characterTexCords":[F
    .end local v6    # "glCharacter":Lcom/parrot/engine3d/objects/GLCharacter;
    .end local v7    # "textureHeight":F
    .end local v8    # "textureWidth":F
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public loadShader(Landroid/content/res/Resources;)Z
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 47
    sget v0, Lcom/parrot/engine3d/R$raw;->texture_vertex_shader:I

    sget v1, Lcom/parrot/engine3d/R$raw;->texture_fragment_shader:I

    invoke-static {p1, v0, v1}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    .line 48
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 50
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "aTexCoord"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "uTextureSampler"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/parrot/engine3d/GLCharacterSet;->mCharacterShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadString(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/parrot/engine3d/objects/GLString;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "str"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/parrot/engine3d/GLCharacterSet;->loadString(Landroid/content/res/Resources;Ljava/lang/String;I)Lcom/parrot/engine3d/objects/GLString;

    move-result-object v0

    return-object v0
.end method

.method public loadString(Landroid/content/res/Resources;Ljava/lang/String;I)Lcom/parrot/engine3d/objects/GLString;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "str"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "textHorizontalAlignment"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 108
    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [Lcom/parrot/engine3d/objects/GLCharacter;

    .line 111
    .local v1, "characters":[Lcom/parrot/engine3d/objects/GLCharacter;
    const/4 v2, 0x0

    .local v2, "it":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 113
    .local v0, "character":Ljava/lang/Character;
    invoke-virtual {p0, p1, v0}, Lcom/parrot/engine3d/GLCharacterSet;->loadCharacter(Landroid/content/res/Resources;Ljava/lang/Character;)Lcom/parrot/engine3d/objects/GLCharacter;

    move-result-object v4

    aput-object v4, v1, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "character":Ljava/lang/Character;
    :cond_0
    new-instance v4, Lcom/parrot/engine3d/objects/GLString;

    invoke-direct {v4, v1, p3}, Lcom/parrot/engine3d/objects/GLString;-><init>([Lcom/parrot/engine3d/objects/GLCharacter;I)V

    .line 117
    .end local v1    # "characters":[Lcom/parrot/engine3d/objects/GLCharacter;
    .end local v2    # "it":I
    .end local v3    # "length":I
    :goto_1
    return-object v4

    :cond_1
    new-instance v4, Lcom/parrot/engine3d/objects/GLString;

    invoke-direct {v4}, Lcom/parrot/engine3d/objects/GLString;-><init>()V

    goto :goto_1
.end method
