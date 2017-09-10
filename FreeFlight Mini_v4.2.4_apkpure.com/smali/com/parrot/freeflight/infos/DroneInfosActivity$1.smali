.class Lcom/parrot/freeflight/infos/DroneInfosActivity$1;
.super Ljava/lang/Object;
.source "DroneInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosActivity;
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
    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$000(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    .line 92
    return-void
.end method
