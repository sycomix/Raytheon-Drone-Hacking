.class Lcom/parrot/freeflight/update/UpdaterUiController$3;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/UpdaterController$StateListener;


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
    .line 130
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/update/UpdaterController$State;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "state"    # Lcom/parrot/freeflight/update/UpdaterController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$000(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController$State;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$002(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/UpdaterController$State;)Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$3;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$100(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 137
    :cond_0
    return-void
.end method
