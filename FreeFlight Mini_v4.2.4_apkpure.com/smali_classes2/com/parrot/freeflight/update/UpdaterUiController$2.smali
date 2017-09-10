.class Lcom/parrot/freeflight/update/UpdaterUiController$2;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$2;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$2;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/UpdaterUiController;->onBackPressed(Z)V

    .line 118
    return-void
.end method
