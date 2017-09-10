.class Lcom/parrot/freeflight/infos/BatteryInfoActivity$1;
.super Ljava/lang/Object;
.source "BatteryInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/BatteryInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/BatteryInfoActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$1;->this$0:Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$1;->this$0:Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 115
    return-void
.end method
