.class public interface abstract annotation Lcom/google/gdata/data/ExtensionDescription$Default;
.super Ljava/lang/Object;
.source "ExtensionDescription.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/gdata/data/ExtensionDescription$Default;
        allowsArbitraryXml = false
        allowsMixedContent = false
        isAggregate = false
        isRepeatable = false
        isRequired = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/ExtensionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Default"
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract allowsArbitraryXml()Z
.end method

.method public abstract allowsMixedContent()Z
.end method

.method public abstract isAggregate()Z
.end method

.method public abstract isRepeatable()Z
.end method

.method public abstract isRequired()Z
.end method

.method public abstract localName()Ljava/lang/String;
.end method

.method public abstract nsAlias()Ljava/lang/String;
.end method

.method public abstract nsUri()Ljava/lang/String;
.end method
