.class Lcom/parrot/freeflight/location/SmartLocationManager$1;
.super Ljava/lang/Object;
.source "SmartLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/SmartLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/SmartLocationManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager$1;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager$1;->this$0:Lcom/parrot/freeflight/location/SmartLocationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->access$000(Lcom/parrot/freeflight/location/SmartLocationManager;Z)V

    .line 154
    return-void
.end method
