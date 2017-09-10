.class Lcom/parrot/freeflight/update/ForceUpdateActivity$1;
.super Ljava/lang/Object;
.source "ForceUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/ForceUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/ForceUpdateActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/ForceUpdateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/ForceUpdateActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity$1;->this$0:Lcom/parrot/freeflight/update/ForceUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity$1;->this$0:Lcom/parrot/freeflight/update/ForceUpdateActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity$1;->this$0:Lcom/parrot/freeflight/update/ForceUpdateActivity;

    const-class v3, Lcom/parrot/freeflight/update/UpdaterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method
