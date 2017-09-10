.class final Lcom/parrot/freeflight/util/TextSizeTransition$1;
.super Landroid/util/Property;
.source "TextSizeTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/util/TextSizeTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/widget/TextView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/TextView;)Ljava/lang/Float;
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/util/TextSizeTransition$1;->get(Landroid/widget/TextView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/widget/TextView;Ljava/lang/Float;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textSizePixels"    # Ljava/lang/Float;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/util/TextSizeTransition$1;->set(Landroid/widget/TextView;Ljava/lang/Float;)V

    return-void
.end method
