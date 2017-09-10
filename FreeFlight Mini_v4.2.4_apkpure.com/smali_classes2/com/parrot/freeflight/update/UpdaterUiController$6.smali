.class Lcom/parrot/freeflight/update/UpdaterUiController$6;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$6;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$6;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$700(Lcom/parrot/freeflight/update/UpdaterUiController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$6;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$600(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method
