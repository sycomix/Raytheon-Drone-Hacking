.class Lcom/parrot/freeflight/infos/BatteryInfoActivity$3;
.super Ljava/lang/Object;
.source "BatteryInfoActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/BatteryInfoActivity;
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
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$3;->this$0:Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$3;->this$0:Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->access$100(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V

    .line 175
    return-void
.end method
