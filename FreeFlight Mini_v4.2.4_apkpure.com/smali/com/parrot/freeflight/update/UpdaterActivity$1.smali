.class Lcom/parrot/freeflight/update/UpdaterActivity$1;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterActivity;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterActivity$1;->this$0:Lcom/parrot/freeflight/update/UpdaterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterActivity$1;->this$0:Lcom/parrot/freeflight/update/UpdaterActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/update/UpdaterActivity;->access$000(Lcom/parrot/freeflight/update/UpdaterActivity;Z)V

    .line 30
    return-void
.end method
