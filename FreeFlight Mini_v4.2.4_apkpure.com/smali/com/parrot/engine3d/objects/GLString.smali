.class public Lcom/parrot/engine3d/objects/GLString;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/engine3d/objects/GLString$TextHorizontalAlignment;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field private static final CHARACTERS_SPACING:F = 1.5f


# instance fields
.field private mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTextHorizontalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>([Lcom/parrot/engine3d/objects/GLCharacter;)V
    .locals 0
    .param p1, "characters"    # [Lcom/parrot/engine3d/objects/GLCharacter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    .line 34
    return-void
.end method

.method public constructor <init>([Lcom/parrot/engine3d/objects/GLCharacter;I)V
    .locals 0
    .param p1, "characters"    # [Lcom/parrot/engine3d/objects/GLCharacter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "textHorizontalAlignment"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    .line 38
    iput p2, p0, Lcom/parrot/engine3d/objects/GLString;->mTextHorizontalAlignment:I

    .line 39
    return-void
.end method

.method private calculateStartPosition()F
    .locals 4

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 65
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    if-eqz v0, :cond_1

    .line 66
    iget v0, p0, Lcom/parrot/engine3d/objects/GLString;->mTextHorizontalAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iget v0, p0, Lcom/parrot/engine3d/objects/GLString;->mPosX:F

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    array-length v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/parrot/engine3d/objects/GLString;->mScaleX:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 74
    :goto_0
    return v0

    .line 69
    :cond_0
    iget v0, p0, Lcom/parrot/engine3d/objects/GLString;->mTextHorizontalAlignment:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 70
    iget v0, p0, Lcom/parrot/engine3d/objects/GLString;->mPosX:F

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    array-length v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/parrot/engine3d/objects/GLString;->mScaleX:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_0

    .line 74
    :cond_1
    iget v0, p0, Lcom/parrot/engine3d/objects/GLString;->mPosX:F

    goto :goto_0
.end method


# virtual methods
.method public draw([F[F[F)V
    .locals 7
    .param p1, "vpMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "projectionMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    if-eqz v4, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLString;->calculateStartPosition()F

    move-result v3

    .line 54
    .local v3, "startPosition":F
    const/4 v1, 0x0

    .local v1, "it":I
    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    array-length v2, v4

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 55
    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    aget-object v0, v4, v1

    .line 56
    .local v0, "character":Lcom/parrot/engine3d/objects/GLCharacter;
    iget v4, p0, Lcom/parrot/engine3d/objects/GLString;->mScaleX:F

    iget v5, p0, Lcom/parrot/engine3d/objects/GLString;->mScaleY:F

    iget v6, p0, Lcom/parrot/engine3d/objects/GLString;->mScaleZ:F

    invoke-virtual {v0, v4, v5, v6}, Lcom/parrot/engine3d/objects/GLCharacter;->setScale(FFF)V

    .line 57
    int-to-float v4, v1

    iget v5, p0, Lcom/parrot/engine3d/objects/GLString;->mScaleX:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    iget v5, p0, Lcom/parrot/engine3d/objects/GLString;->mPosY:F

    iget v6, p0, Lcom/parrot/engine3d/objects/GLString;->mPosZ:F

    invoke-virtual {v0, v4, v5, v6}, Lcom/parrot/engine3d/objects/GLCharacter;->setPosition(FFF)V

    .line 58
    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/engine3d/objects/GLCharacter;->draw([F[F[F)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "character":Lcom/parrot/engine3d/objects/GLCharacter;
    .end local v1    # "it":I
    .end local v2    # "length":I
    .end local v3    # "startPosition":F
    :cond_0
    monitor-exit p0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setTextHorizontalAlignment(I)V
    .locals 0
    .param p1, "textHorizontalAlignment"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/parrot/engine3d/objects/GLString;->mTextHorizontalAlignment:I

    .line 79
    return-void
.end method

.method public updateCharacters([Lcom/parrot/engine3d/objects/GLCharacter;)V
    .locals 1
    .param p1, "characters"    # [Lcom/parrot/engine3d/objects/GLCharacter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLString;->mCharacters:[Lcom/parrot/engine3d/objects/GLCharacter;

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
