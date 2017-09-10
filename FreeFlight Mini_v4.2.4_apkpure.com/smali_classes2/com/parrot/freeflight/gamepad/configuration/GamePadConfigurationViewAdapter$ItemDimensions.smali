.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;
.super Ljava/lang/Object;
.source "GamePadConfigurationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemDimensions"
.end annotation


# instance fields
.field public final controlMinWidth:I

.field public final controlPadding:I

.field public final controlRowBigMargin:I

.field public final controlRowMargin:I

.field public final directionHorizontalWidth:I

.field public final directionVerticalWidth:I

.field public final separatorTextSize:I

.field public final separatorWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const v0, 0x7f0a015e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    .line 247
    const v0, 0x7f0a005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlRowMargin:I

    .line 248
    const v0, 0x7f0a005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlRowBigMargin:I

    .line 249
    const v0, 0x7f0a0163

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->separatorWidth:I

    .line 250
    const v0, 0x7f0a015f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlMinWidth:I

    .line 251
    const v0, 0x7f0a0162

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->separatorTextSize:I

    .line 252
    const v0, 0x7f0a0160

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionHorizontalWidth:I

    .line 253
    const v0, 0x7f0a0161

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionVerticalWidth:I

    .line 254
    return-void
.end method
