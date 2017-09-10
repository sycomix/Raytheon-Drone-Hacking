.class Lcom/parrot/freeflight/infos/DroneInfosActivity$3;
.super Ljava/lang/Object;
.source "DroneInfosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/DroneInfosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$3;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    const-class v3, Lcom/parrot/freeflight/update/UpdaterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
