prob_3_sim = function(n_obs = 30, mu, sigma = 5) {
  
  sim_df = 
    tibble(
      x = rnorm(n = n_obs, mean = mu, sd = sigma)
    )
  
  t.test(pull(sim_df, x)) |> 
    broom::tidy() |> 
    select(mu_est = estimate, p_val = p.value)
}
