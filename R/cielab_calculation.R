custom_analysis_function_cielab <- function(data_frame) {
  cielab_calculation <- function(x) {
    abstotrans <- function(x) {
      10^(-x)
    }
    trans <- select(data_frame, -longdeonda)
    trans2 <- map_df(trans, abstotrans)
    L <- data_frame$longdeonda
    df2 <- cbind(L, trans2)
    df <- as.matrix(df2)
    XYZ <- spectra2XYZ(df[, c('L', x)], ciexyzIn = ciexyz64)
    XYZ <- XYZ * 100
    assign(paste(x), append(assign(paste(x), XYZ2Lab(XYZ, illuminant = 'D65', observer = 10,
                                                     RefWhite = get("XYZperfectreflectingdiffuser", envir = environment()))), x, 4))
  }

  calculate_cielab <- map(names(select(data_frame, -longdeonda)), cielab_calculation)
  W <- do.call(rbind, calculate_cielab)
  W <- as.data.frame(W)
  colnames(W) <- c("L", "a", "b", "tratamiento")  # Cambiado el nombre de la cuarta columna

  # Convertir columnas L, a y b a tipo numérico
  W$L <- as.numeric(W$L)
  W$a <- as.numeric(W$a)
  W$b <- as.numeric(W$b)

  W <- mutate(W, h = ((atan2(b, a) * 180) / (pi)))
  W <- mutate(W, C = sqrt(a^2 + b^2))
  W <- select(W, h, L, a, b, C)

  return(W)
}
