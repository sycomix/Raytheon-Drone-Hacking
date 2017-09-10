.class public interface abstract Lorg/mortbay/util/Scanner$BulkListener;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Lorg/mortbay/util/Scanner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BulkListener"
.end annotation


# virtual methods
.method public abstract filesChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
