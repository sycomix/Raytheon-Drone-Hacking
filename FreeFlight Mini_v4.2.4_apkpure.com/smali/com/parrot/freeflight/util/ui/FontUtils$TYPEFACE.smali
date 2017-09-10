.class public final Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;
.super Ljava/lang/Object;
.source "FontUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/util/ui/FontUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TYPEFACE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE$FontVariant;
    }
.end annotation


# static fields
.field public static final FONT_VARIANT_BOLD:I = 0x3

.field public static final FONT_VARIANT_DEFAULT_SEMIBOLD:I = 0x4

.field public static final FONT_VARIANT_MEDIUM:I = 0x2

.field public static final FONT_VARIANT_REGULAR:I = 0x1

.field private static sFontVariantBold:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sFontVariantMedium:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sFontVariantRegular:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sFontVariantSemibold:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFontVariant(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFontVariant(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "variant"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 76
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantSemibold:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/rajdhani_semibold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantSemibold:Landroid/graphics/Typeface;

    .line 79
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantSemibold:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantRegular:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/rajdhani_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantRegular:Landroid/graphics/Typeface;

    .line 63
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantRegular:Landroid/graphics/Typeface;

    goto :goto_0

    .line 65
    :pswitch_1
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantMedium:Landroid/graphics/Typeface;

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/rajdhani_medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantMedium:Landroid/graphics/Typeface;

    .line 68
    :cond_2
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantMedium:Landroid/graphics/Typeface;

    goto :goto_0

    .line 70
    :pswitch_2
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantBold:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/rajdhani_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantBold:Landroid/graphics/Typeface;

    .line 73
    :cond_3
    sget-object v0, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->sFontVariantBold:Landroid/graphics/Typeface;

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
