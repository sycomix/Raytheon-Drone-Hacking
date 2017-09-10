.class Lcom/parrot/freeflight/infos/BatteryInfoActivity$2;
.super Ljava/lang/Object;
.source "BatteryInfoActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 125
    iput-object p1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$2;->this$0:Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$2;->this$0:Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->access$000(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V

    .line 129
    return-void
.end method
