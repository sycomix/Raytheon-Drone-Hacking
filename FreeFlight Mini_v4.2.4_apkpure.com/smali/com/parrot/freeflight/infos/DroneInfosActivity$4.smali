.class Lcom/parrot/freeflight/infos/DroneInfosActivity$4;
.super Ljava/lang/Object;
.source "DroneInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 173
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$200(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    .line 177
    return-void
.end method
