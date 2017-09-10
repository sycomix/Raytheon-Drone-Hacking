.class Lcom/parrot/freeflight/infos/DroneInfosActivity$2;
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
    .line 134
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$2;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$2;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->onBackPressed()V

    .line 138
    return-void
.end method
